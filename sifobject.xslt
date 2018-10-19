<xsl:stylesheet version="1.0"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  xmlns:sif="http://sifassociation.org/SpecGen"
  xmlns:exsl="http://exslt.org/common"
  xmlns:str="http://exslt.org/strings"
  extension-element-prefixes="exsl"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"  encoding="utf-8"/>

  <xsl:strip-space elements="*" />

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="text()">
    <xsl:value-of select="normalize-space()"/>
  </xsl:template>

  <xsl:template match="//sif:Key | //sif:EventsReported | //sif:Description | //sif:Intro | //sif:Characteristics | //xhtml:Example"/>

  <xsl:template match="/sif:DataObject | //sif:CommonElement">
    PARENT <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="/sif:DataObject/sif:Item[1] | //sif:CommonElement/sif:Item[1]">
    <xsl:choose>
      <xsl:when test="../sif:Item[2] | ../sif:Choice">
        <xsl:value-of select="sif:Element"/>//
        <xsl:if test="sif:Type">
          <xsl:text>%Inherits: </xsl:text> 
          <xsl:call-template name="type_extract">
            <xsl:with-param name="type" select="sif:Type | sif:Values | sif:Union"/>
            <xsl:with-param name="characteristics" select="M"/>
            <!-- the characteristics on the base item of a common element is meaningless -->
            </xsl:call-template> <xsl:text> ;
          </xsl:text>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise> 
        <xsl:choose>
          <xsl:when test="sif:Element">
            <xsl:value-of select="sif:Element"/> 
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="sif:Attribute"/> 
          </xsl:otherwise>
        </xsl:choose> <xsl:text> </xsl:text> 
        <xsl:call-template name="type_extract">
          <xsl:with-param name="type" select="sif:Type | sif:Values | sif:Union"/>
          <xsl:with-param name="characteristics" select="sif:Characteristics"/>
        </xsl:call-template> 
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="/sif:DataObject/sif:Item[position()>1] | //sif:CommonElement/sif:Item[position()>1] | /sif:DataObject//sif:Choice/sif:Item | //sif:CommonElement/sif:Choice/sif:Item ">
    <xsl:variable name="indent" select=' string-length(sif:Element) - string-length(translate(sif:Element, "/", ""))'/>
    <xsl:if test="$indent>0"> ##<xsl:value-of select="$indent"/> </xsl:if>
    <xsl:choose>
      <xsl:when test="sif:Element">
        <xsl:value-of select="translate(sif:Element, '/', '')"/>
        <xsl:text>: </xsl:text> 
        <xsl:call-template name="type_extract">
          <xsl:with-param name="type" select="sif:Type | sif:Values | sif:Union"/>
          <xsl:with-param name="characteristics" select="sif:Characteristics"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        ATTRIBUTE <xsl:value-of select="translate(sif:Attribute, '/', '')"/>
        <xsl:text>: </xsl:text> 
        <xsl:call-template name="type_extract">
          <xsl:with-param name="type" select="sif:Type | sif:Values | sif:Union"/>
          <xsl:with-param name="characteristics" select="sif:Characteristics"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
      <xsl:text>;
      </xsl:text>
  </xsl:template>

  <xsl:template name="safe_name">
    <xsl:param name="name"/>
    <xsl:choose>
      <xsl:when test="contains($name, ':')">
        <xsl:variable name='lowers' select='"abcdefghijklmnopqrstuvwxyz"' />
        <xsl:variable name='uppers' select='"ABCDEFGHIJKLMNOPQRSTUVWXYZ"' />
        <xsl:variable name='localname' select='substring-after($name,":")' />
        <!-- https://stackoverflow.com/questions/13122545/convert-first-character-of-each-word-to-upper-case -->
        <xsl:value-of select='concat(
          translate(substring($localname, 1, 1), $lowers, $uppers),
          translate(substring($localname, 2), $uppers, $lowers),
          " "
          )' />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="translate($name, '/', '')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="type_extract">
    <xsl:param name="type"/>
    <xsl:param name="characteristics"/>
    <xsl:if test="'R' = substring($characteristics, string-length($characteristics))"> LIST </xsl:if>
    <xsl:choose>
      <xsl:when test="exsl:node-set($type)/@name = 'IdRefType'">
        <xsl:text>string</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@ref = 'CodeSets'">
        <xsl:text>string</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@ref = 'ExternalCodeSets'">
        <xsl:text>string</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@ref = 'CommonTypes'">
        <xsl:value-of select="exsl:node-set($type)/@name"/>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:unsignedInt'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:integer'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:decimal'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:byte'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:int'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:long'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:negativeInteger'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:nonNegativeInteger'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:positiveInteger'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:short'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:unsignedLong'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:unsignedShort'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:unsignedByte'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:decimal'">
        <xsl:text>number</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name = 'xs:boolean'">
        <xsl:text>boolean</xsl:text>
      </xsl:when>
      <xsl:when test="substring(exsl:node-set($type)/@name, 1, 3) = 'xs:'">
        <xsl:text>string</xsl:text>
      </xsl:when>
      <xsl:when test="exsl:node-set($type)/@name">
        <xsl:value-of select="exsl:node-set($type)/@name"/>
      </xsl:when>
      <xsl:when test="not($type)">
        <xsl:text>EMPTY</xsl:text>
      </xsl:when>
      <xsl:otherwise>string</xsl:otherwise>
    </xsl:choose>
  </xsl:template>



</xsl:stylesheet>
