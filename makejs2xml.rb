complexattr = []
simpleattr = []
list = []
numeric = []
boolean = []
numericattr = []
booleanattr = []


while line = gets do
  if /^COMPLEX ATTRIBUTE/.match line
    /COMPLEX ATTRIBUTE: (?<path>\S+)/ =~ line
    complexattr << path
  elsif /^SIMPLE ATTRIBUTE/.match line
    /SIMPLE ATTRIBUTE: (?<path>\S+)/ =~ line
    simpleattr << path
  elsif /^LIST/.match line
    /LIST: (?<path>\S+)/ =~ line
    list << path
  elsif /^NUMERIC.*\@/.match line
    /NUMERIC: (?<path>\S+)/ =~ line
    numericattr << path
  elsif /^NUMERIC/.match line
    /NUMERIC: (?<path>\S+)/ =~ line
    numeric << path
  elsif /^BOOLEAN.*\@/.match line
    /BOOLEAN: (?<path>\S+)/ =~ line
    booleanattr << path
  elsif /^BOOLEAN/.match line
    /BOOLEAN: (?<path>\S+)/ =~ line
    booleanattr << path
  end
end

jsonattr = {}
complexattr.each do |a|
  /^(?<obj>[^\/\@]+)/ =~ a 
  # what object does this path start with?
  jsonattr[obj] = [] unless jsonattr[obj]
  jsonattr[obj] << %{"#{a.gsub(%r{/@?}, ".")}"} # add JSON Path to complex content attribute
end

print <<~"END"
let X2JS = require('x2js');
const fs = require("fs");
const js = fs.readFileSync("/dev/stdin", "utf-8");
var dot = require('dot-object');

var attrpaths = new Object;
END

# enumerate JSON Paths to complex content attribute by object, for quicker lookup
jsonattr.each do |k, v|
  print <<~"END"
  attrpaths["#{k}"] = [#{v.join(',')}];
  END
end


print <<~"END"

/* this is inefficent */
function attributes(newobj) {
  var tgt = dot.dot(newobj); /* get all paths within the JSON object */
  var object = Object.keys(tgt)[0].replace(/\\..*$/, ""); /* get name of object */
  for(var i=0; i< attrpaths[object].length; i++) {
      for (var key in tgt) {
      /* brute force lookup: compare all paths in the object to all 
        complex content attribute paths known for the object */
          var key_stripped;
          key_stripped = key.replace(/\\.[0-9]+/g, "");
          /* we don't have wildcard array access (cf. doc-wild) + path rename command in the same JS library.
             So forced to generate paths stripped of array indexes,
             to match registered complex content attribute paths  */
          if(key_stripped == attrpaths[object][i]) {
              /* indicate to x2js that this is an XML attribute */
              dot.move(key, key.replace(/\\.([^.]+)$/, "._$1"), newobj);
          }
      }
  }

    /* value key is used when there are attributes on simple content.
       Rearrange attributes if there is a value key */
    var paths = [];
    for (var key in tgt) {
        if(key.endsWith(".value")) {
            paths.push(key.replace(/\\.value/, ""));
        }
    }
      for(var i=0; i<paths.length; i++) {
          for(var key in tgt) {
              if (key.startsWith(paths[i])) {
                  if (key == paths[i] + ".value") {
                     /* x2js counterpart to PESC JSON "value" key */
                      dot.move(key, paths[i] + ".__text", newobj);
                  } else if (!key.replace(paths[i] + ".", "").includes(".")) {
                     /* indicate in x2js that all sibling keys to "value" are XML attributes */
                    dot.move(key, key.replace(/\\.([^.]+)$/, "._$1"), newobj);
                  }
              }
          }
      }
      return newobj;
}

var x = new X2JS({stripWhitespaces : false});
var json = JSON.parse(js);
/* presupposes we are processing array of JSON objects */
for(var i=0; i<json.length; i++) {
    newobj = json[i];
    newobj = attributes(newobj);
    var xml = x.js2xml(newobj);
    console.log(xml);
}
END
