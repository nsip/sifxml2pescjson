#!/bin/bash
# 1. Download specgen
#rm -fr specgen_input
#git clone https://github.com/nsip/specgen_input.git

# 2. Extract all necessary information from specgen into flat files

echo "" > objectgraph.txt
echo "" > typegraph.txt
# process all objects in the specification
for filename in ./specgen_input/06_DataModel/Custom/Common/*.xml; do
  if [[ "$filename" == "./specgen_input/06_DataModel/Custom/Common/StudentScoreSet.xml" ]]; then
    continue
  fi
  xsltproc sifobject.xslt "$filename" >> objectgraph.txt
done
for filename in ./specgen_input/06_DataModel/Custom/AU/*.xml; do
  xsltproc sifobject.xslt "$filename" >> objectgraph.txt
done
# process all common types in the specification
echo '<root xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns="http://sifassociation.org/SpecGen" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xhtml="http://www.w3.org/1999/xhtml" >' > data.xml
cat specgen_input/80_BackMatter/Generic-CommonTypes.xml >> data.xml
cat specgen_input/80_BackMatter/Custom/DataModel-CommonTypes-Custom.xml >> data.xml
echo '</root>' >> data.xml
xsltproc sifobject.xslt data.xml >> typegraph.txt

# 3. Generate transformation scripts and stylesheets

ruby treeparse.rb > scripts/out.txt
ruby makexslt.rb < scripts/out.txt > scripts/sif2json.xslt
ruby makereorder.rb < scripts/out.txt > scripts/sifreorder.xslt
ruby makejs2xml.rb < scripts/out.txt > scripts/json2sif.js


# 4. Extract example XML from specgen
mkdir -p test
echo "<sif>" > test/siftest.xml 
for filename in ./specgen_input/06_DataModel/Custom/Common/*.xml; do
  if [[ "$filename" == "./specgen_input/06_DataModel/Custom/Common/StudentScoreSet.xml" ]]; then
    continue
  fi
  perl sifexamples.pl "$filename" >> test/siftest.xml
done
for filename in ./specgen_input/06_DataModel/Custom/AU/*.xml; do
  if [[ "$filename" == "./specgen_input/06_DataModel/Custom/Common/StudentScoreSet.xml" ]]; then
    continue
  fi
  perl sifexamples.pl "$filename" >> test/siftest.xml
done
echo "</sif>" >> test/siftest.xml 

# 5. Test roundtrip XML > JSON (preserving order of keys) > XML

xsltproc scripts/sif2json.xslt test/siftest.xml > test/siftest.json
jq . test/siftest.json > test/siftest.pretty.json
echo "<sif>" > test/siftest2.xml
node scripts/json2sif.js < test/siftest.pretty.json >> test/siftest2.xml
echo "</sif>" >> test/siftest2.xml
xmllint --format test/siftest.xml > test/siftest.pretty.xml
xmllint --format test/siftest2.xml > test/siftest2.pretty.xml
diff test/siftest.pretty.xml test/siftest2.pretty.xml > test/diff.txt
cat test/diff.txt
echo "Diff lines, roundtrip: "
egrep "^< " test/diff.txt|wc -l

# 6. Test reordering XML > JSON XML (not preserving order of keys) > XML

xsltproc scripts/sif2json.xslt test/siftest.xml > test/siftest.json
jq  -S . test/siftest.json > test/siftest.sorted.json
echo "<sif>" > test/siftest3.xml
node scripts/json2sif.js < test/siftest.sorted.json >> test/siftest3.xml
echo "</sif>" >> test/siftest3.xml
xsltproc scripts/sifreorder.xslt test/siftest3.xml > test/siftest.sorted.xml
xmllint --format test/siftest.sorted.xml > test/siftest.sorted.pretty.xml
diff test/siftest2.pretty.xml test/siftest.sorted.pretty.xml > test/diff.sorted.txt
cat test/diff.sorted.txt
echo "Diff lines, re-sorting XML: "
egrep "^< " test/diff.sorted.txt|wc -l

