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
  <xsl:template match="alert/category | alert/code | createResponse/creates/create/error/code | deleteResponse/deletes/delete/error/code | error/code | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataSubject/respondInDays | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataDeletion/dataRetention | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataDeletion/partyToDeleteData/deletecontactInfo/phoneNumberList/phoneNumber/preference | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataDeletion/respondInDays | pod/privacyList/privacy/privacyObligationsDocument/dataController/privacyContact/phoneNumberList/phoneNumber/preference | pod/privacyList/privacy/privacyObligationsDocument/dataController/issuesNotificationContact/phoneNumberList/phoneNumber/preference | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/privacyContact/phoneNumberList/phoneNumber/preference | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataProcessorContactForAccessRequests/phoneNumberList/phoneNumber/preference | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/personalInformationUpdatedFromSource | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataBreachContact/phoneNumberList/phoneNumber/preference | pod/privacyList/privacy/privacyObligationsDocument/dataSubProcessorList/dataSubProcessor/privacyContact/phoneNumberList/phoneNumber/preference | provider/querySupport/maxPageSize | queue/idleTimeout | queue/minWaitTime | queue/maxConcurrentConnections | queue/messageCount | updateResponse/updates/update/error/code | xquery/parameters/parameter/range/start | xquery/parameters/parameter/range/end | xquery/parameters/parameter/minLength | xquery/parameters/parameter/maxLength | codeSet/codeItems/codeItem/aliases/alias/code/old | codeSet/codeItems/codeItem/aliases/alias/code/official | job/phases/phase/required | provider/querySupport/dynamicQuery | provider/querySupport/queryByExample | provider/querySupport/changesSinceMarker | provider/querySupport/paged | provider/querySupport/totalCount | xquery/parameters/parameter/required" mode="value">
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
  <xsl:template match="environment/defaultZone/properties/property | environment/infrastructureServices/infrastructureService | environment/provisionedZones/provisionedZone/services/service/rights/right | job/phases/phase/rights/right | job/phases/phase/statesRights/right | provider/endPoint/properties/property | provisionRequest/provisionedZones/provisionedZone/services/service/rights/right | zone/properties/property" mode="detect">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="obj-content" priority="1"/>
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
  </xsl:template>

  <!-- list  - takes precedence when list of elements which are simple content with attributes -->
  <xsl:template match="codeSet/codeItems/codeItem | codeSet/codeItems/codeItem/aliases/alias | createResponse/creates/create | deleteRequest/deletes/delete | deleteResponse/deletes/delete | environment/defaultZone/properties/property | environment/infrastructureServices/infrastructureService | environment/provisionedZones/provisionedZone | environment/provisionedZones/provisionedZone/services/service | environment/provisionedZones/provisionedZone/services/service/rights/right | job/phases/phase | job/phases/phase/rights/right | job/phases/phase/statesRights/right | pod/privacyList/privacy | pod/privacyList/privacy/appIDList/appID | pod/privacyList/privacy/adapterFingerprintList/adapterFingerprint | pod/privacyList/privacy/zoneContextList/zoneContext | pod/privacyList/privacy/endpointList/endpoint | pod/privacyList/privacy/privacyObligationsDocument/contract/lawList/law | pod/privacyList/privacy/privacyObligationsDocument/legalRequirements/clauseList/clause | pod/privacyList/privacy/privacyObligationsDocument/legalRequirements/clauseList/clause/obligationList/obligation | pod/privacyList/privacy/privacyObligationsDocument/legalRequirements/clauseList/clause/obligationList/obligation/benchmarkList/benchmark | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataAccess/clauseList/clause | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataAccess/clauseList/clause/obligationList/obligation | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataAccess/clauseList/clause/obligationList/obligation/benchmarkList/benchmark | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataAccess/fieldList/field | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/conditionList/condition | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/conditionList/condition/propertyList/property | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataSubject/clauseList/clause | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataSubject/clauseList/clause/obligationList/obligation | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataSubject/clauseList/clause/obligationList/obligation/benchmarkList/benchmark | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataSubject/benchmarkList/benchmark | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataSubject/fieldList/field | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataDeletion/partyToDeleteData/deletecontactInfo/emailList/email | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/dataDeletion/partyToDeleteData/deletecontactInfo/phoneNumberList/phoneNumber | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/securityTechnologyList/securityTechnology | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/securityTechnologyList/securityTechnology/clauseList/clause | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/securityTechnologyList/securityTechnology/clauseList/clause/obligationList/obligation | pod/privacyList/privacy/privacyObligationsDocument/technicalRequirements/securityTechnologyList/securityTechnology/clauseList/clause/obligationList/obligation/benchmarkList/benchmark | pod/privacyList/privacy/privacyObligationsDocument/dataController/privacyContact | pod/privacyList/privacy/privacyObligationsDocument/dataController/privacyContact/emailList/email | pod/privacyList/privacy/privacyObligationsDocument/dataController/privacyContact/phoneNumberList/phoneNumber | pod/privacyList/privacy/privacyObligationsDocument/dataController/issuesNotificationContact | pod/privacyList/privacy/privacyObligationsDocument/dataController/issuesNotificationContact/emailList/email | pod/privacyList/privacy/privacyObligationsDocument/dataController/issuesNotificationContact/phoneNumberList/phoneNumber | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/privacyContact | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/privacyContact/emailList/email | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/privacyContact/phoneNumberList/phoneNumber | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataProcessorContactForAccessRequests | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataProcessorContactForAccessRequests/emailList/email | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataProcessorContactForAccessRequests/phoneNumberList/phoneNumber | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/purposeList/purpose | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/alternatePurposeList/alternatePurpose | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/deidentifiedPurposeList/deidentifiedPurpose | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataBreachContact | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataBreachContact/emailList/email | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/dataBreachContact/phoneNumberList/phoneNumber | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/employeeTrainingList/employeeTraining | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/securityTestRequiredList/securityTestRequired | pod/privacyList/privacy/privacyObligationsDocument/dataProcessor/countryImpactedList/countryImpacted | pod/privacyList/privacy/privacyObligationsDocument/dataSubProcessorList/dataSubProcessor | pod/privacyList/privacy/privacyObligationsDocument/dataSubProcessorList/dataSubProcessor/privacyContact | pod/privacyList/privacy/privacyObligationsDocument/dataSubProcessorList/dataSubProcessor/privacyContact/emailList/email | pod/privacyList/privacy/privacyObligationsDocument/dataSubProcessorList/dataSubProcessor/privacyContact/phoneNumberList/phoneNumber | pod/privacyList/privacy/privacyObligationsDocument/dataSubProcessorList/dataSubProcessor/purposeList/purpose | provider/mimeTypes/mediaType | provider/endPoint/properties/property | provisionRequest/provisionedZones/provisionedZone | provisionRequest/provisionedZones/provisionedZone/services/service | provisionRequest/provisionedZones/provisionedZone/services/service/rights/right | updateResponse/updates/update | xquery/parameters/parameter | xquery/parameters/parameter/enumerations/enumeration | zone/properties/property" mode="detect" priority="2">
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
  <xsl:template match="environment/defaultZone/properties/property | environment/infrastructureServices/infrastructureService | environment/provisionedZones/provisionedZone/services/service/rights/right | job/phases/phase/rights/right | job/phases/phase/statesRights/right | provider/endPoint/properties/property | provisionRequest/provisionedZones/provisionedZone/services/service/rights/right | zone/properties/property" mode="obj-content">
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
