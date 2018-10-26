complexattr = []
simpleattr = []
list = []
numeric = []
boolean = []
numericattr = []
booleanattr = []


while line = gets do
  if /COMPLEX ATTRIBUTE/.match line
    /COMPLEX ATTRIBUTE: (?<path>\S+)/ =~ line
    complexattr << path
  elsif /SIMPLE ATTRIBUTE/.match line
    /SIMPLE ATTRIBUTE: (?<path>\S+)/ =~ line
    simpleattr << path
  elsif /LIST/.match line
    /LIST: (?<path>\S+)/ =~ line
    list << path
  elsif /NUMERIC.*\@/.match line
    /NUMERIC: (?<path>\S+)/ =~ line
    numericattr << path
  elsif /NUMERIC/.match line
    /NUMERIC: (?<path>\S+)/ =~ line
    numeric << path
  elsif /BOOLEAN.*\@/.match line
    /BOOLEAN: (?<path>\S+)/ =~ line
    booleanattr << path
  elsif /BOOLEAN/.match line
    /BOOLEAN: (?<path>\S+)/ =~ line
    booleanattr << path
  end
end
jsonattr = complexattr.collect { |a| '"' + a.gsub(%r{/@?}, ".") + '"' }

print <<~"END"
let X2JS = require('x2js');
const fs = require("fs");
const js = fs.readFileSync("/dev/stdin", "utf-8");
var dot = require('dot-object');

var attrpaths = [#{jsonattr.join(',')}];
/* obvious future optimisation: separate array for each object */

/* this is monstrously inefficent */
function attributes(newobj) {
  var tgt = dot.dot(newobj); /* get all paths of object */
  for (var key in tgt) {
    var key_stripped;
    key_stripped = key.replace(/\.[0-9]+/g, "");
    /* we don't have wildcard array access (cf. doc-wild) + move property in the same library */
    for(var i=0; i< attrpaths.length; i++) {
      if(key_stripped == attrpaths[i]) {
        dot.move(key, key.replace(/\.([^.]+)$/, "._$1"), newobj);
      }
    }
  }

  var paths = [];
  for (var key in tgt) {
    if(key.endsWith(".value")) {
      paths.push(key.replace(/\\.value/, ""));
    }
  }
  /* rearrange attributes if there is a value key */
  for(var i=0; i<paths.length; i++) {
    for(var key in tgt) {
      if (key.startsWith(paths[i])) {
        if (key == paths[i] + ".value") {
          dot.move(key, paths[i] + ".__text", newobj);
        } else if (!key.replace(paths[i] + ".", "").includes(".")) {
          dot.move(key, key.replace(/\\.([^.]+)$/, "._$1"), newobj);
        }
      }
    }
  }
  return newobj;
}

var x = new X2JS();
var json = JSON.parse(js);
for(var i=0; i<json.length; i++) {
  newobj = json[i];
  newobj = attributes(newobj);
  var xml = x.js2xml(newobj);
  console.log(xml);
}
END
