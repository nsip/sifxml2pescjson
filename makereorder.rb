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

  <xsl:template match="node()|@*">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" mode="object"/>
  </xsl:copy>
 </xsl:template>

   <xsl:template match="node()|@*" mode="copy">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" mode="copy"/>
  </xsl:copy>
END

graph.each do |container, elements|
  mode = elements[0][:object] == "OBJECT" ? "object" : container.gsub('/', '__')
  match = elements[0][:object] == "OBJECT" ? container : "node()|@*"
  # passthrough = type which is an alias of another type: we drop the "xsl:copy" command and use match="."
  passthrough = elements.length == 1 && elements[0][:path] == "node()" && !elements[0][:lookup].empty? && graph[elements[0][:type]]
  print <<~"END"
<xsl:template match="#{match}" mode="#{mode}">
  END
  passthrough or print <<~"END"
        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy" />
  END
  elements.each do |item|
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
