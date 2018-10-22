#!/bin/bash
#rm -fr specgen_input
#git clone https://github.com/nsip/specgen_input.git

echo "" > objectgraph.txt
echo "" > typegraph.txt

for filename in ./specgen_input/06_DataModel/Custom/Common/*.xml; do
  if [[ "$filename" == "./specgen_input/06_DataModel/Custom/Common/StudentScoreSet.xml" ]]; then
    continue
  fi
  xsltproc sifobject.xslt "$filename" >> objectgraph.txt
done
for filename in ./specgen_input/06_DataModel/Custom/AU/*.xml; do
  xsltproc sifobject.xslt "$filename" >> objectgraph.txt
done
echo '<root xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns="http://sifassociation.org/SpecGen" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xhtml="http://www.w3.org/1999/xhtml" >' > data.xml
cat specgen_input/80_BackMatter/Generic-CommonTypes.xml >> data.xml
cat specgen_input/80_BackMatter/Custom/DataModel-CommonTypes-Custom.xml >> data.xml
echo '</root>' >> data.xml
xsltproc sifobject.xslt data.xml >> typegraph.txt

echo "<sif>" > siftest.xml 
for filename in ./specgen_input/06_DataModel/Custom/Common/*.xml; do
  if [[ "$filename" == "./specgen_input/06_DataModel/Custom/Common/StudentScoreSet.xml" ]]; then
    continue
  fi
  perl sifexamples.pl "$filename" >> siftest.xml
done
for filename in ./specgen_input/06_DataModel/Custom/AU/*.xml; do
  if [[ "$filename" == "./specgen_input/06_DataModel/Custom/Common/StudentScoreSet.xml" ]]; then
    continue
  fi
  perl sifexamples.pl "$filename" >> siftest.xml
done
echo "</sif>" >> siftest.xml 



ruby treeparse.rb > out.txt
ruby makexslt.rb < out.txt > sif2json.xslt
xsltproc sif2json.xslt siftest.xml > siftest.json
jq . siftest.json > siftest.pretty.json
ruby makejs2xml.rb < out.txt > json2sif.js
echo "<sif>" > siftest2.xml
node json2sif.js < siftest.pretty.json >> siftest2.xml
echo "</sif>" >> siftest2.xml
xmllint --format siftest2.xml > siftest2.pretty.xml
