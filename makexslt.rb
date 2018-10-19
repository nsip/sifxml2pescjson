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

complexattr = ["NEVERMATCH"] if complexattr.empty?
simpleattr = ["NEVERMATCH"] if simpleattr.empty?
list = ["NEVERMATCH"] if list.empty?
boolean = ["NEVERMATCH"] if boolean.empty?
numeric = ["NEVERMATCH"] if numeric.empty?
numericattr = ["NEVERMATCH"] if numericattr.empty?
booleanattr = ["NEVERMATCH"] if booleanattr.empty?

print <<~"END"
<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- from https://gist.github.com/inancgumus/3ce56ddde6d5c93f3550b3b4cdc6bcb8 -->
  <xsl:output method="text" encoding="utf-8"/>

  <xsl:template match="/*[node()]">
    <xsl:text>{</xsl:text>
    <xsl:apply-templates select="." mode="detect" />
    <xsl:text>}</xsl:text>
  </xsl:template>

  <xsl:template match="*" mode="detect">
    <xsl:choose>
      <xsl:when test="count(./child::*) > 0 or count(@*) > 0">
        <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="obj-content" />
      </xsl:when>
      <xsl:when test="count(./child::*) = 0">
        <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="value"/>
      </xsl:when>
    </xsl:choose>
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
  </xsl:template>

  <xsl:template match="*" mode="value">
    <xsl:text>"</xsl:text><xsl:apply-templates select="."/><xsl:text>"</xsl:text>
  </xsl:template>

  <!-- numeric or boolean -->
  <xsl:template match="#{numeric.join(' | ')}" mode="value">
    <xsl:apply-templates select="."/>
  </xsl:template>

  <xsl:template match="* | @*" mode="attrvalue">
    <xsl:text>"</xsl:text><xsl:apply-templates select="."/><xsl:text>"</xsl:text>
  </xsl:template>

  <!-- numeric or boolean attribute -->
  <xsl:template match="#{numericattr.join(' | ')}" mode="attrvalue">
    <xsl:apply-templates select="."/>
  </xsl:template>

  <!-- simple content with attribute -->
  <xsl:template match="#{simpleattr.join(' | ')}" mode="detect">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="obj-content" />
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
  </xsl:template>

  <!-- list -->
  <xsl:template match="#{list.join(' | ')}" mode="detect">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/><xsl:text>" : [</xsl:text>
    <xsl:choose>
      <xsl:when test="count(./child::*) > 0 or count(@*) > 0">
        <xsl:apply-templates select="." mode="obj-content" />
      </xsl:when>
      <xsl:when test="count(./child::*) = 0">
        <!-- <xsl:text>"</xsl:text><xsl:apply-templates select="."/><xsl:text>"</xsl:text> -->
        <xsl:apply-templates select="." mode="value"/>
      </xsl:when>
    </xsl:choose>
    <xsl:text>]</xsl:text>
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
  </xsl:template>

  <xsl:template match="*" mode="obj-content">
    <xsl:text>{</xsl:text>
    <xsl:apply-templates select="@*" mode="attr" />
    <xsl:if test="count(@*) &gt; 0 and (count(child::*) &gt; 0 or text())">, </xsl:if>
    <xsl:apply-templates select="./*" mode="detect" />
    <xsl:if test="count(child::*) = 0 and text() and not(@*)">
      <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="text()" mode="value"/>
    </xsl:if>
    <xsl:if test="count(child::*) = 0 and text() and @*">
      <xsl:text>"value" : </xsl:text><xsl:apply-templates select="text()" mode="value"/>
    </xsl:if>
    <xsl:text>}</xsl:text>
    <xsl:if test="position() &lt; last()">, </xsl:if>
  </xsl:template>

  <!-- simple content with attribute -->
  <xsl:template match="#{simpleattr.join(' | ')}" mode="obj-content">
    <xsl:text>{</xsl:text>
    <xsl:apply-templates select="@*" mode="attr" />
    <xsl:if test="count(@*) &gt; 0 and (count(child::*) &gt; 0 or text())">, </xsl:if>
    <xsl:apply-templates select="./*" mode="detect" />
    <xsl:if test="count(child::*) = 0 and text()">
      <xsl:text>"value" : </xsl:text><xsl:apply-templates select="text()" mode="value"/>
    </xsl:if>
    <xsl:text>}</xsl:text>
    <xsl:if test="position() &lt; last()">, </xsl:if>
  </xsl:template>

  <xsl:template match="@*" mode="attr">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="attrvalue"/>
    <xsl:if test="position() &lt; last()">, </xsl:if>
  </xsl:template>

  <xsl:template match="node/@TEXT | text()" name="removeBreaks">
    <xsl:param name="pText" select="normalize-space(.)"/>
    <xsl:choose>
      <xsl:when test="not(contains($pText, '&#xA;'))"><xsl:copy-of select="$pText"/></xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat(substring-before($pText, '&#xD;&#xA;'), ' ')"/>
        <xsl:call-template name="removeBreaks">
          <xsl:with-param name="pText" select="substring-after($pText, '&#xD;&#xA;')"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
END

