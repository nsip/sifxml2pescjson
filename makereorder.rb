require "byebug"
require "pp"
graph = {}

while line = gets do
  if /XPATHTYPE/.match line
    a = line.chomp.split /\t/
    # XPATHTYPE       ExclusionRule   ExclusionRuleType       LOOKUP  TYPE    ExclusionRulesType
    path = a[1]
    type = a[2]
    lookup = a[3]
    object = a[4]
    label = a[5]
    graph[label] ||= []
    graph[label] << { path: path, type: type, lookup: lookup, object: object }
  end
end

print <<~"END"
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output encoding="UTF-8" indent="yes" method="xml" />

  <xsl:template match="node()|@*" mode="copy">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" mode="copy"/>
  </xsl:copy>
 </xsl:template>

  <xsl:template match="node()|@*">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" mode="object"/>
  </xsl:copy>
 </xsl:template>
END

graph.each do |k, v|
  mode = v[0][:object] == "OBJECT" ? "object" : k.gsub('/', '__')
  match = v[0][:object] == "OBJECT" ? k : "node()|@*"
  passthrough = v.length == 1 && v[0][:path] == "node()" && !v[0][:lookup].empty? && graph[v[0][:type]]
  print <<~"END"
<xsl:template match="#{match}" mode="#{mode}">
  END
  passthrough or print <<~"END"
        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy" />
  END
  v.each do |item|
    print <<~"END"
    <xsl:apply-templates select="#{passthrough ? '.' : item[:path]}" mode="#{ !item[:lookup].empty? ? item[:type].gsub('/', '__') : 'copy' }" />
    END
  end
  passthrough or print <<~"END"
        </xsl:copy>
  END
  print <<~"END"
    </xsl:template>
  END
end

print <<~"END"
</xsl:stylesheet>
END
