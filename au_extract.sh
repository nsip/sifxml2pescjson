#!/bin/bash

# Script to extract specgen information from raw AU specgen input files


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

