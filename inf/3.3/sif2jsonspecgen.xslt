<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:json="http://json.org/">
  <!-- from https://gist.github.com/inancgumus/3ce56ddde6d5c93f3550b3b4cdc6bcb8 -->
  <!-- https://github.com/bramstein/xsltjson/blob/master/conf/xml-to-jsonml.xsl -->
  <xsl:output method="text" omit-xml-declaration="yes" encoding="utf-8"/>

  <xsl:template match="/*[node()]">
    <xsl:apply-templates select="." mode="obj-list" />
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

  <xsl:template match="*" mode="obj-detect">
    {
    <xsl:choose>
      <xsl:when test="count(./child::*) > 0 or count(@*) > 0">
        <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="obj-content" />
      </xsl:when>
      <xsl:when test="count(./child::*) = 0">
        <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="value"/>
      </xsl:when>
    </xsl:choose>
    }
  </xsl:template>

  <!-- objects -->
  <xsl:template match="alert | codeSet | createResponse | deleteRequest | deleteResponse | environment | error | job | namespace | pod | provider | provisionRequest | queue | state | subscription | updateResponse | xquery | zone" mode="obj-list">
    <xsl:if test="count(preceding-sibling::*) = 0">
      <xsl:text>[</xsl:text>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="count(./child::*) > 0 or count(@*) > 0">
        <xsl:apply-templates select="." mode="obj-detect" />
      </xsl:when>
    </xsl:choose>
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
    <xsl:if test="count(following-sibling::*) = 0"><xsl:text>]</xsl:text></xsl:if>
  </xsl:template>

  <!-- numeric or boolean -->
  <xsl:template match="alert/category | alert/code | /error/code | error/code | /dataSubject/respondInDays | /dataDeletion/dataRetention | /phoneNumber/preference | /dataDeletion/respondInDays | /dataProcessor/personalInformationUpdatedFromSource | /querySupport/maxPageSize | queue/idleTimeout | queue/minWaitTime | queue/maxConcurrentConnections | queue/messageCount | /range/start | /range/end | /parameter/minLength | /parameter/maxLength | /code/old | /code/official | /phase/required | /querySupport/dynamicQuery | /querySupport/queryByExample | /querySupport/changesSinceMarker | /querySupport/paged | /querySupport/totalCount | /parameter/required" mode="value">
    <xsl:call-template name="encode-numeric-value">
      <xsl:with-param name="value" select="." />
    </xsl:call-template>
  </xsl:template>

  <xsl:template match="* | @*" mode="attrvalue">
    <xsl:text>"</xsl:text><xsl:apply-templates select="."/><xsl:text>"</xsl:text>
  </xsl:template>

  <!-- numeric or boolean attribute -->
  <xsl:template match="NEVERMATCH | NEVERMATCH" mode="attrvalue">
    <xsl:call-template name="encode-numeric-value">
      <xsl:with-param name="value" select="." />
    </xsl:call-template>
  </xsl:template>

  <!-- simple content with attribute -->
  <xsl:template match="/properties/property | /infrastructureServices/infrastructureService | /rights/right | /statesRights/right" mode="detect">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="obj-content" priority="1"/>
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
  </xsl:template>

  <!-- list  - takes precedence when list of elements which are simple content with attributes -->
  <xsl:template match="/codeItems/codeItem | /aliases/alias | /creates/create | /deletes/delete | /properties/property | /infrastructureServices/infrastructureService | /provisionedZones/provisionedZone | /services/service | /rights/right | /phases/phase | /statesRights/right | /privacyList/privacy | /appIDList/appID | /adapterFingerprintList/adapterFingerprint | /zoneContextList/zoneContext | /endpointList/endpoint | /lawList/law | /clauseList/clause | /obligationList/obligation | /benchmarkList/benchmark | /fieldList/field | /conditionList/condition | /propertyList/property | /emailList/email | /phoneNumberList/phoneNumber | /securityTechnologyList/securityTechnology | /dataController/privacyContact | /dataController/issuesNotificationContact | /dataProcessor/privacyContact | /dataProcessor/dataProcessorContactForAccessRequests | /purposeList/purpose | /alternatePurposeList/alternatePurpose | /deidentifiedPurposeList/deidentifiedPurpose | /dataProcessor/dataBreachContact | /employeeTrainingList/employeeTraining | /securityTestRequiredList/securityTestRequired | /countryImpactedList/countryImpacted | /dataSubProcessorList/dataSubProcessor | /dataSubProcessor/privacyContact | /mimeTypes/mediaType | /updates/update | /parameters/parameter | /enumerations/enumeration" mode="detect" priority="2">
  <!-- repeating item may not be wrapped up in a List element (so check names of preceding-siblings) -->
  <xsl:if test="count(preceding-sibling::*) = 0 or not(name(preceding-sibling::*[1]) = name(.))">
      <xsl:text>"</xsl:text><xsl:value-of select="name()"/><xsl:text>" : [</xsl:text>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="count(./child::*) > 0 or count(@*) > 0">
        <xsl:apply-templates select="." mode="obj-content" />
      </xsl:when>
      <xsl:when test="count(./child::*) = 0">
        <xsl:apply-templates select="." mode="value"/>
      </xsl:when>
    </xsl:choose>
    <!-- repeating item may not be wrapped up in a List element (so check names of following-siblings) -->
    <xsl:if test="count(following-sibling::*) &gt; 0 and name(following-sibling::*[1]) = name(.)">, </xsl:if>
    <xsl:if test="count(following-sibling::*) = 0 or not(name(following-sibling::*[1]) = name(.))"><xsl:text>]</xsl:text><xsl:if test="count(following-sibling::*) &gt; 0"><xsl:text>,</xsl:text></xsl:if></xsl:if>
  </xsl:template>  

  <xsl:template match="*" mode="obj-content">
    <xsl:text>{</xsl:text>
    <xsl:apply-templates select="@*" mode="attr" />
    <xsl:if test="count(@*) &gt; 0 and (count(child::*) &gt; 0 or text())">, </xsl:if>
    <xsl:apply-templates select="./*" mode="detect" />
    <xsl:if test="count(child::*) = 0 and text() and not(@*)">
      <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="value"/>
    </xsl:if>
    <xsl:if test="count(child::*) = 0 and text() and @*">
      <xsl:text>"value" : </xsl:text><xsl:apply-templates select="." mode="value"/>
    </xsl:if>
    <xsl:text>}</xsl:text>
    <xsl:if test="position() &lt; last()">, </xsl:if>
  </xsl:template>

  <!-- simple content with attribute -->
  <xsl:template match="/properties/property | /infrastructureServices/infrastructureService | /rights/right | /statesRights/right" mode="obj-content">
    <xsl:text>{</xsl:text>
    <xsl:apply-templates select="@*" mode="attr" />
    <xsl:if test="count(@*) &gt; 0 and (count(child::*) &gt; 0 or text())">, </xsl:if>
    <xsl:apply-templates select="./*" mode="detect" />
    <xsl:if test="count(child::*) = 0 and text()">
      <xsl:text>"value" : </xsl:text><xsl:apply-templates select="." mode="value"/>
    </xsl:if>
    <xsl:text>}</xsl:text>
    <xsl:if test="position() &lt; last()">, </xsl:if>
  </xsl:template>

  <xsl:template match="@*" mode="attr">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="attrvalue"/>
    <xsl:if test="position() &lt; last()">, </xsl:if>
  </xsl:template>

  <!-- https://github.com/bramstein/xsltjson/blob/master/conf/xml-to-jsonml.xsl -->
  <json:search name="string">
		<json:replace src="\" dst="\\"/>
		<json:replace src="&quot;" dst="\&quot;"/>
		<json:replace src="&#xA;" dst="\n"/>
		<json:replace src="&#xD;" dst="\r"/>
		<json:replace src="&#x9;" dst="\t"/>
		<json:replace src="\n" dst="\n"/>
		<json:replace src="\r" dst="\r"/>
		<json:replace src="\t" dst="\t"/>
  </json:search>

  <xsl:template name="replace-string">
		<xsl:param name="input"/>
		<xsl:param name="src"/>
		<xsl:param name="dst"/>
		<xsl:choose>
			<xsl:when test="contains($input, $src)">
				<xsl:value-of select="concat(substring-before($input, $src), $dst)"/>
				<xsl:call-template name="replace-string">
					<xsl:with-param name="input" select="substring-after($input, $src)"/>
					<xsl:with-param name="src" select="$src"/>
					<xsl:with-param name="dst" select="$dst"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$input"/>
			</xsl:otherwise>
		</xsl:choose>
  </xsl:template>

  <xsl:template name="encode">
		<xsl:param name="input"/>
		<xsl:param name="index">1</xsl:param>

		<xsl:variable name="text">
			<xsl:call-template name="replace-string">
				<xsl:with-param name="input" select="$input"/>
				<xsl:with-param name="src" select="document('')//json:search/json:replace[$index]/@src"/>
				<xsl:with-param name="dst" select="document('')//json:search/json:replace[$index]/@dst"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:choose>
			<xsl:when test="$index &lt; count(document('')//json:search/json:replace)">
				<xsl:call-template name="encode">
					<xsl:with-param name="input" select="$text"/>
					<xsl:with-param name="index" select="$index + 1"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>
  </xsl:template>

  <xsl:template name="encode-value">
                <xsl:param name="value"/>
                <!--
                <xsl:choose>
                        <xsl:when test="normalize-space($value) != $value">
                -->
                <!-- no, we always call encode, because we escape  as well -->
                                <xsl:call-template name="encode">
                                        <xsl:with-param name="input" select="$value"/>
                                </xsl:call-template>
                <!--
                        </xsl:when>
                        <xsl:otherwise>
                                <xsl:value-of select="$value"/>
                        </xsl:otherwise>
                </xsl:choose>
                -->
  </xsl:template>

  <xsl:template match="node/@TEXT | text()" name="removeBreaks" priority="10">
    <xsl:call-template name="encode-value">
      <xsl:with-param name="value" select="." />
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="encode-numeric-value">
                <xsl:param name="value"/>
                <xsl:choose>
                        <xsl:when test="substring(normalize-space($value), 1, 1) = '.'">
                                <xsl:text>0</xsl:text><xsl:value-of select="$value"/>
                        </xsl:when>
                        <xsl:otherwise>
                                <xsl:value-of select="$value"/>
                        </xsl:otherwise>
                </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
