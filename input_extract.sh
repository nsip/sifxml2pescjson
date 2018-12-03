#!/bin/bash
  
# Script to extract specgen information from input.xml file generated by specgen normalisation

echo "" > objectgraph.txt
echo "" > typegraph.txt
# process all objects in the specification
cat SIF_DataModel.input.xml | perl -e 'while(<>){$$i = 1 if /<DataObjects/; print if $$i; $$i = 0 if /<\/DataObjects/;}' | xsltproc sifobject.xslt - > objectgraph.txt
  cat SIF_DataModel.input.xml | perl -e 'while(<>){$$i = 1 if /<Appendix name="Common Types"/; s#<Appendix name="Common Types"#<Appendix xmlns="http://sifassociation.org/SpecGen" name="Common Types"#; print if $$i; $$i = 0 if /<\/Appendix/;}' |xsltproc sifobject.xslt - > typegraph.txt
