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
let X2JS = require('./x2js');
const fs = require("fs");
const js = fs.readFileSync("/dev/stdin", "utf-8");
var dot = require('dot-object');

function attributes(newobj) {
  var paths = [#{jsonattr.join(',')}];
  for (var  i=0; i< paths.length; i++) {
    var path = paths[i];
    dot.move(path, path.replace(/\.([^.]+)$/, "._$1"), newobj);
  }
  return newobj;
}

var x = new X2JS();
var json = JSON.parse(js);
for(obj in json["sif"]) {
  newobj = {};
  newobj[obj] = json["sif"][obj];
  newobj = attributes(newobj);
  var xml = x.js2xml(newobj);
  console.log(xml);
}
END
