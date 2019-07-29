let X2JS = require('x2js');
const fs = require("fs");
const js = fs.readFileSync(0, "utf-8");
var dot = require('dot-object');

var attrpaths = new Object;
attrpaths["alert"] = ["alert.id"];
attrpaths["codeSet"] = ["codeSet.id"];
attrpaths["createResponse"] = ["createResponse.creates.create.id","createResponse.creates.create.advisoryId","createResponse.creates.create.statusCode","createResponse.creates.create.error.id"];
attrpaths["deleteRequest"] = ["deleteRequest.deletes.delete.id"];
attrpaths["deleteResponse"] = ["deleteResponse.deletes.delete.id","deleteResponse.deletes.delete.statusCode","deleteResponse.deletes.delete.error.id"];
attrpaths["environment"] = ["environment.type","environment.id","environment.defaultZone.id","environment.provisionedZones.provisionedZone.id","environment.provisionedZones.provisionedZone.services.service.type","environment.provisionedZones.provisionedZone.services.service.name","environment.provisionedZones.provisionedZone.services.service.contextId"];
attrpaths["error"] = ["error.id"];
attrpaths["job"] = ["job.id"];
attrpaths["namespace"] = ["namespace.id"];
attrpaths["pod"] = ["pod.id"];
attrpaths["provider"] = ["provider.id"];
attrpaths["provisionRequest"] = ["provisionRequest.id","provisionRequest.completionStatus","provisionRequest.provisionedZones.provisionedZone.id","provisionRequest.provisionedZones.provisionedZone.services.service.type","provisionRequest.provisionedZones.provisionedZone.services.service.name","provisionRequest.provisionedZones.provisionedZone.services.service.contextId"];
attrpaths["queue"] = ["queue.id"];
attrpaths["state"] = ["state.id"];
attrpaths["subscription"] = ["subscription.id"];
attrpaths["updateResponse"] = ["updateResponse.updates.update.id","updateResponse.updates.update.statusCode","updateResponse.updates.update.error.id"];
attrpaths["xquery"] = ["xquery.id"];
attrpaths["zone"] = ["zone.id"];

/* this is inefficent */
function attributes(newobj) {
  var tgt = dot.dot(newobj); /* get all paths within the JSON object */
  var object = Object.keys(tgt)[0].replace(/\..*$/, ""); /* get name of object */
  for(var i=0; i< attrpaths[object].length; i++) {
      for (var key in tgt) {
      /* brute force lookup: compare all paths in the object to all 
        complex content attribute paths known for the object */
          var key_stripped;
          key_stripped = key.replace(/\.[0-9]+/g, "");
          /* we don't have wildcard array access (cf. doc-wild) + path rename command in the same JS library.
             So forced to generate paths stripped of array indexes,
             to match registered complex content attribute paths  */
          if(key_stripped == attrpaths[object][i]) {
              /* indicate to x2js that this is an XML attribute */
              dot.move(key, key.replace(/\.([^.]+)$/, "._$1"), newobj);
          }
      }
  }

    /* value key is used when there are attributes on simple content.
       Rearrange attributes if there is a value key */
    var paths = [];
    for (var key in tgt) {
        if(key.endsWith(".value")) {
            paths.push(key.replace(/\.value/, ""));
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
                    dot.move(key, key.replace(/\.([^.]+)$/, "._$1"), newobj);
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
