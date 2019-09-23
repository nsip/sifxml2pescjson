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
  </xsl:template>
<xsl:template match="alert" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="reporter" mode="copy" />
<xsl:apply-templates select="cause" mode="copy" />
<xsl:apply-templates select="exchange" mode="copy" />
<xsl:apply-templates select="level" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="messageID" mode="copy" />
<xsl:apply-templates select="body" mode="copy" />
<xsl:apply-templates select="error" mode="copy" />
<xsl:apply-templates select="xpath" mode="copy" />
<xsl:apply-templates select="category" mode="copy" />
<xsl:apply-templates select="code" mode="copy" />
<xsl:apply-templates select="internal" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="codeSet" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zone" mode="copy" />
<xsl:apply-templates select="version" mode="versionType" />
<xsl:apply-templates select="timestamp" mode="copy" />
<xsl:apply-templates select="source" mode="uriType" />
<xsl:apply-templates select="codeItems" mode="codeItemsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="createResponse" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="creates" mode="createsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="deleteRequest" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deletes" mode="deleteIdCollectionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="deleteResponse" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deletes" mode="deleteStatusCollectionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="environment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="fingerprint" mode="copy" />
<xsl:apply-templates select="sessionToken" mode="copy" />
<xsl:apply-templates select="solutionId" mode="copy" />
<xsl:apply-templates select="defaultZone" mode="zoneType" />
<xsl:apply-templates select="authenticationMethod" mode="copy" />
<xsl:apply-templates select="instanceId" mode="copy" />
<xsl:apply-templates select="userToken" mode="copy" />
<xsl:apply-templates select="consumerName" mode="copy" />
<xsl:apply-templates select="applicationInfo" mode="applicationInfoType" />
<xsl:apply-templates select="infrastructureServices" mode="infrastructureServicesType" />
<xsl:apply-templates select="provisionedZones" mode="provisionedZonesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="error" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="code" mode="copy" />
<xsl:apply-templates select="scope" mode="copy" />
<xsl:apply-templates select="message" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="job" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="state" mode="jobStateType" />
<xsl:apply-templates select="stateDescription" mode="copy" />
<xsl:apply-templates select="created" mode="copy" />
<xsl:apply-templates select="lastModified" mode="copy" />
<xsl:apply-templates select="timeout" mode="copy" />
<xsl:apply-templates select="phases" mode="phaseCollectionType" />
<xsl:apply-templates select="initialization" mode="initializationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="namespace" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zone" mode="copy" />
<xsl:apply-templates select="uri" mode="copy" />
<xsl:apply-templates select="url" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="pod" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="podStatus" mode="copy" />
<xsl:apply-templates select="podToken" mode="gCoreLocalIdType" />
<xsl:apply-templates select="podVersion" mode="copy" />
<xsl:apply-templates select="partyId" mode="copy" />
<xsl:apply-templates select="privacyList" mode="privacyListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="provider" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="serviceType" mode="serviceTypeType" />
<xsl:apply-templates select="serviceName" mode="copy" />
<xsl:apply-templates select="contextId" mode="copy" />
<xsl:apply-templates select="zoneId" mode="copy" />
<xsl:apply-templates select="providerName" mode="copy" />
<xsl:apply-templates select="querySupport" mode="querySupportType" />
<xsl:apply-templates select="mimeTypes" mode="mediaTypesType" />
<xsl:apply-templates select="endPoint" mode="protocolType" />
</xsl:copy>
</xsl:template>
<xsl:template match="provisionRequest" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="provisionedZones" mode="provisionedZonesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="queue" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="polling" mode="copy" />
<xsl:apply-templates select="ownerId" mode="uuidType" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="queueUri" mode="copy" />
<xsl:apply-templates select="ownerUri" mode="copy" />
<xsl:apply-templates select="idleTimeout" mode="copy" />
<xsl:apply-templates select="minWaitTime" mode="copy" />
<xsl:apply-templates select="maxConcurrentConnections" mode="copy" />
<xsl:apply-templates select="created" mode="copy" />
<xsl:apply-templates select="lastAccessed" mode="copy" />
<xsl:apply-templates select="lastModified" mode="copy" />
<xsl:apply-templates select="messageCount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="state" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="phaseStateType" />
<xsl:apply-templates select="created" mode="copy" />
<xsl:apply-templates select="lastModified" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="subscription" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zoneId" mode="copy" />
<xsl:apply-templates select="contextId" mode="copy" />
<xsl:apply-templates select="serviceType" mode="serviceTypeType" />
<xsl:apply-templates select="serviceName" mode="copy" />
<xsl:apply-templates select="queueId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="updateResponse" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="updates" mode="updatesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="xquery" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="status" mode="copy" />
<xsl:apply-templates select="qualifier" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="script" mode="copy" />
<xsl:apply-templates select="parameters" mode="parametersType" />
<xsl:apply-templates select="returnType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="zone" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="properties" mode="propertiesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="alertType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="reporter" mode="copy" />
<xsl:apply-templates select="cause" mode="copy" />
<xsl:apply-templates select="exchange" mode="copy" />
<xsl:apply-templates select="level" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="messageID" mode="copy" />
<xsl:apply-templates select="body" mode="copy" />
<xsl:apply-templates select="error" mode="copy" />
<xsl:apply-templates select="xpath" mode="copy" />
<xsl:apply-templates select="category" mode="copy" />
<xsl:apply-templates select="code" mode="copy" />
<xsl:apply-templates select="internal" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="codeSetType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zone" mode="copy" />
<xsl:apply-templates select="version" mode="versionType" />
<xsl:apply-templates select="timestamp" mode="copy" />
<xsl:apply-templates select="source" mode="uriType" />
<xsl:apply-templates select="codeItems" mode="codeItemsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="createResponseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="creates" mode="createsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="deleteRequestType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deletes" mode="deleteIdCollectionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="deleteResponseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deletes" mode="deleteStatusCollectionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="environmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="fingerprint" mode="copy" />
<xsl:apply-templates select="sessionToken" mode="copy" />
<xsl:apply-templates select="solutionId" mode="copy" />
<xsl:apply-templates select="defaultZone" mode="zoneType" />
<xsl:apply-templates select="authenticationMethod" mode="copy" />
<xsl:apply-templates select="instanceId" mode="copy" />
<xsl:apply-templates select="userToken" mode="copy" />
<xsl:apply-templates select="consumerName" mode="copy" />
<xsl:apply-templates select="applicationInfo" mode="applicationInfoType" />
<xsl:apply-templates select="infrastructureServices" mode="infrastructureServicesType" />
<xsl:apply-templates select="provisionedZones" mode="provisionedZonesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="errorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="code" mode="copy" />
<xsl:apply-templates select="scope" mode="copy" />
<xsl:apply-templates select="message" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="jobType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="state" mode="jobStateType" />
<xsl:apply-templates select="stateDescription" mode="copy" />
<xsl:apply-templates select="created" mode="copy" />
<xsl:apply-templates select="lastModified" mode="copy" />
<xsl:apply-templates select="timeout" mode="copy" />
<xsl:apply-templates select="phases" mode="phaseCollectionType" />
<xsl:apply-templates select="initialization" mode="initializationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="namespaceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zone" mode="copy" />
<xsl:apply-templates select="uri" mode="copy" />
<xsl:apply-templates select="url" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="podType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="podStatus" mode="copy" />
<xsl:apply-templates select="podToken" mode="gCoreLocalIdType" />
<xsl:apply-templates select="podVersion" mode="copy" />
<xsl:apply-templates select="partyId" mode="copy" />
<xsl:apply-templates select="privacyList" mode="privacyListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="providerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="serviceType" mode="serviceTypeType" />
<xsl:apply-templates select="serviceName" mode="copy" />
<xsl:apply-templates select="contextId" mode="copy" />
<xsl:apply-templates select="zoneId" mode="copy" />
<xsl:apply-templates select="providerName" mode="copy" />
<xsl:apply-templates select="querySupport" mode="querySupportType" />
<xsl:apply-templates select="mimeTypes" mode="mediaTypesType" />
<xsl:apply-templates select="endPoint" mode="protocolType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="provisionRequestType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="provisionedZones" mode="provisionedZonesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="queueType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="polling" mode="copy" />
<xsl:apply-templates select="ownerId" mode="uuidType" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="queueUri" mode="copy" />
<xsl:apply-templates select="ownerUri" mode="copy" />
<xsl:apply-templates select="idleTimeout" mode="copy" />
<xsl:apply-templates select="minWaitTime" mode="copy" />
<xsl:apply-templates select="maxConcurrentConnections" mode="copy" />
<xsl:apply-templates select="created" mode="copy" />
<xsl:apply-templates select="lastAccessed" mode="copy" />
<xsl:apply-templates select="lastModified" mode="copy" />
<xsl:apply-templates select="messageCount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="stateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="phaseStateType" />
<xsl:apply-templates select="created" mode="copy" />
<xsl:apply-templates select="lastModified" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="subscriptionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zoneId" mode="copy" />
<xsl:apply-templates select="contextId" mode="copy" />
<xsl:apply-templates select="serviceType" mode="serviceTypeType" />
<xsl:apply-templates select="serviceName" mode="copy" />
<xsl:apply-templates select="queueId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="updateResponseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="updates" mode="updatesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="xqueryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="status" mode="copy" />
<xsl:apply-templates select="qualifier" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="script" mode="copy" />
<xsl:apply-templates select="parameters" mode="parametersType" />
<xsl:apply-templates select="returnType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="zoneType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="properties" mode="propertiesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DefinedProtocolsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExtendedContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SelectedContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="provisionedZonesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="provisionedZone" mode="provisionedZoneType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="provisionedZoneType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="services" mode="servicesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="createsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="create" mode="createType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="createType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="error" mode="errorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="deleteIdCollectionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="delete" mode="deleteIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="environmentTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="jobStateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="phaseCollectionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="phase" mode="phaseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="phaseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="states" mode="copy" />
<xsl:apply-templates select="required" mode="copy" />
<xsl:apply-templates select="rights" mode="rightsType" />
<xsl:apply-templates select="statesRights" mode="rightsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="initializationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="phaseName" mode="copy" />
<xsl:apply-templates select="payload" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="phaseStateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="enumerationsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="enumeration" mode="enumerationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="enumerationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="value" mode="copy" />
<xsl:apply-templates select="code" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="parametersType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="parameter" mode="parameterType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="parameterType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="copy" />
<xsl:apply-templates select="type" mode="copy" />
<xsl:apply-templates select="default" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="required" mode="copy" />
<xsl:apply-templates select="enumerations" mode="enumerationsType" />
<xsl:apply-templates select="range" mode="rangeType" />
<xsl:apply-templates select="minLength" mode="copy" />
<xsl:apply-templates select="maxLength" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="propertiesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="property" mode="propertyType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="rangeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="start" mode="copy" />
<xsl:apply-templates select="end" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="propertyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="applicationInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="applicationKey" mode="copy" />
<xsl:apply-templates select="supportedInfrastructureVersion" mode="copy" />
<xsl:apply-templates select="dataModelNamespace" mode="copy" />
<xsl:apply-templates select="transport" mode="copy" />
<xsl:apply-templates select="applicationProduct" mode="productIdentityType" />
<xsl:apply-templates select="adapterProduct" mode="productIdentityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="productIdentityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="vendorName" mode="copy" />
<xsl:apply-templates select="productName" mode="copy" />
<xsl:apply-templates select="productVersion" mode="copy" />
<xsl:apply-templates select="iconURI" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="servicesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="service" mode="serviceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="serviceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="rights" mode="rightsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="rightsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="right" mode="rightType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="rightValueType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="rightType">
<xsl:apply-templates select="." mode="rightValueType" />
</xsl:template>
<xsl:template match="node()|@*" mode="serviceTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="infrastructureServicesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="infrastructureService" mode="infrastructureServiceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="infrastructureServiceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="infrastructureServiceNamesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="uuidType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="versionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="uriType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="aliasesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="alias" mode="aliasType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="querySupportType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="dynamicQuery" mode="copy" />
<xsl:apply-templates select="queryByExample" mode="copy" />
<xsl:apply-templates select="changesSinceMarker" mode="copy" />
<xsl:apply-templates select="paged" mode="copy" />
<xsl:apply-templates select="maxPageSize" mode="copy" />
<xsl:apply-templates select="totalCount" mode="copy" />
<xsl:apply-templates select="applicationProduct" mode="productIdentityType" />
<xsl:apply-templates select="adapterProduct" mode="productIdentityType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="aliasType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="code" mode="codeType" />
<xsl:apply-templates select="source" mode="uriType" />
<xsl:apply-templates select="namespace" mode="uriType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="codeItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="code" mode="copy" />
<xsl:apply-templates select="source" mode="uriType" />
<xsl:apply-templates select="namespace" mode="uriType" />
<xsl:apply-templates select="value" mode="copy" />
<xsl:apply-templates select="description" mode="copy" />
<xsl:apply-templates select="definition" mode="copy" />
<xsl:apply-templates select="aliases" mode="aliasesType" />
<xsl:apply-templates select="action" mode="copy" />
<xsl:apply-templates select="timestamp" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="codeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="old" mode="copy" />
<xsl:apply-templates select="official" mode="copy" />
<xsl:apply-templates select="value" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="codeItemsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="codeItem" mode="codeItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="deleteStatusCollectionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="delete" mode="deleteStatusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="deleteStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="error" mode="errorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="deleteIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="mediaTypesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="mediaType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="protocolType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="location" mode="copy" />
<xsl:apply-templates select="properties" mode="propertiesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="updatesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="update" mode="updateType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="updateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="error" mode="errorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreEmailListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="email" mode="gCoreEmailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreEmailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCorePhoneNumberListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="phoneNumber" mode="gCorePhoneNumberType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCorePhoneNumberType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="number" mode="copy" />
<xsl:apply-templates select="extension" mode="copy" />
<xsl:apply-templates select="listedStatus" mode="copy" />
<xsl:apply-templates select="preference" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="title" mode="copy" />
<xsl:apply-templates select="familyName" mode="copy" />
<xsl:apply-templates select="givenName" mode="copy" />
<xsl:apply-templates select="otherGivenNames" mode="copy" />
<xsl:apply-templates select="familyNameFirst" mode="copy" />
<xsl:apply-templates select="preferredName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="contact" mode="gCoreContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreContactInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="name" mode="gCoreNameType" />
<xsl:apply-templates select="positionTitle" mode="copy" />
<xsl:apply-templates select="role" mode="copy" />
<xsl:apply-templates select="registrationDetails" mode="copy" />
<xsl:apply-templates select="qualifications" mode="copy" />
<xsl:apply-templates select="address" mode="gCoreAddressType" />
<xsl:apply-templates select="emailList" mode="gCoreEmailListType" />
<xsl:apply-templates select="phoneNumberList" mode="gCorePhoneNumberListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreAddressType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="effectiveFromDate" mode="copy" />
<xsl:apply-templates select="effectiveToDate" mode="copy" />
<xsl:apply-templates select="line1" mode="copy" />
<xsl:apply-templates select="line2" mode="copy" />
<xsl:apply-templates select="line3" mode="copy" />
<xsl:apply-templates select="city" mode="copy" />
<xsl:apply-templates select="stateProvince" mode="gCoreStateProvinceType" />
<xsl:apply-templates select="country" mode="gCoreCountryType" />
<xsl:apply-templates select="postalCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreAddressListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="address" mode="gCoreAddressType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreCountryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreLocalIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreStateProvinceIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreStateProvinceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="gCoreGenderType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="privacyListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="privacy" mode="privacyType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="privacyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="default" mode="copy" />
<xsl:apply-templates select="appIDList" mode="appIDListType" />
<xsl:apply-templates select="adapterFingerprintList" mode="adapterFingerprintListType" />
<xsl:apply-templates select="zoneContextList" mode="zoneContextListType" />
<xsl:apply-templates select="endpointList" mode="endpointListType" />
<xsl:apply-templates select="dataModelNamespace" mode="copy" />
<xsl:apply-templates select="dataModelVersionMin" mode="copy" />
<xsl:apply-templates select="dataModelVersionMax" mode="copy" />
<xsl:apply-templates select="privacyObligationsDocument" mode="privacyObligationsDocumentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="privacyObligationsDocumentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="contract" mode="contractType" />
<xsl:apply-templates select="legalRequirements" mode="legalRequirementsType" />
<xsl:apply-templates select="technicalRequirements" mode="technicalRequirementsType" />
<xsl:apply-templates select="dataController" mode="dataControllerType" />
<xsl:apply-templates select="dataProcessor" mode="dataProcessorType" />
<xsl:apply-templates select="dataSubProcessorList" mode="dataSubProcessorListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="contractType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="contractURI" mode="copy" />
<xsl:apply-templates select="contractName" mode="copy" />
<xsl:apply-templates select="dateValidFrom" mode="copy" />
<xsl:apply-templates select="dateValidTo" mode="copy" />
<xsl:apply-templates select="contractVersion" mode="copy" />
<xsl:apply-templates select="lawList" mode="lawListType" />
<xsl:apply-templates select="studentDataIPRights" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="lawListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="law" mode="lawType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="lawType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="lawName" mode="copy" />
<xsl:apply-templates select="lawDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="legalRequirementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="clauseList" mode="clauseListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="clauseListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="clause" mode="clauseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="clauseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="clauseLabel" mode="copy" />
<xsl:apply-templates select="clauseReference" mode="copy" />
<xsl:apply-templates select="clauseContent" mode="copy" />
<xsl:apply-templates select="obligationList" mode="obligationListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="benchmarkListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="benchmark" mode="benchmarkType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="benchmarkType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="benchmarkName" mode="copy" />
<xsl:apply-templates select="benchmarkId" mode="gCoreLocalIdType" />
<xsl:apply-templates select="benchmarkDescription" mode="copy" />
<xsl:apply-templates select="benchmarkURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="obligationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="obligation" mode="obligationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="obligationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="obligationDescription" mode="copy" />
<xsl:apply-templates select="obligationURL" mode="copy" />
<xsl:apply-templates select="benchmarkList" mode="benchmarkListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="technicalRequirementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="dataAccess" mode="dataAccessType" />
<xsl:apply-templates select="conditionList" mode="conditionListType" />
<xsl:apply-templates select="dataSubject" mode="dataSubjectType" />
<xsl:apply-templates select="dataDeletion" mode="dataDeletionType" />
<xsl:apply-templates select="securityTechnologyList" mode="securityTechnologyListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="dataAccessType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="clauseList" mode="clauseListType" />
<xsl:apply-templates select="fieldList" mode="fieldListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="dataSubjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="clauseList" mode="clauseListType" />
<xsl:apply-templates select="benchmarkList" mode="benchmarkListType" />
<xsl:apply-templates select="fieldList" mode="fieldListType" />
<xsl:apply-templates select="respondInDays" mode="copy" />
<xsl:apply-templates select="requirePortability" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="dataDeletionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deleteData" mode="copy" />
<xsl:apply-templates select="dataRetention" mode="copy" />
<xsl:apply-templates select="deleteBy" mode="copy" />
<xsl:apply-templates select="partyToDeleteData" mode="partyToDeleteDataType" />
<xsl:apply-templates select="respondInDays" mode="copy" />
<xsl:apply-templates select="requirePortability" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="partyToDeleteDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="organisation" mode="gCoreLocalIdType" />
<xsl:apply-templates select="deletecontactInfo" mode="gCoreContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="securityTechnologyListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="securityTechnology" mode="securityTechnologyType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="securityTechnologyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="clauseList" mode="clauseListType" />
<xsl:apply-templates select="technologyName" mode="copy" />
<xsl:apply-templates select="technologyDescription" mode="copy" />
<xsl:apply-templates select="referenceURL" mode="copy" />
<xsl:apply-templates select="versionMin" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="fieldListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="field" mode="fieldType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="fieldType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="fieldName" mode="copy" />
<xsl:apply-templates select="controlrights" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="dataControllerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="dataControllerName" mode="copy" />
<xsl:apply-templates select="privacyPolicyURL" mode="copy" />
<xsl:apply-templates select="privacyContactList" mode="gCoreContactListType" />
<xsl:apply-templates select="issuesNotificationContactList" mode="gCoreContactListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="dataSubProcessorListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="dataSubProcessor" mode="dataSubProcessorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="dataProcessorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="dataProcessorName" mode="copy" />
<xsl:apply-templates select="privacyPolicyURL" mode="copy" />
<xsl:apply-templates select="privacyContactList" mode="gCoreContactListType" />
<xsl:apply-templates select="notifyDataControllerOnAccessRequests" mode="copy" />
<xsl:apply-templates select="dataProcessorContactForAccessRequestsList" mode="gCoreContactListType" />
<xsl:apply-templates select="purposeList" mode="purposeListType" />
<xsl:apply-templates select="alternatePurposeList" mode="alternatePurposeListType" />
<xsl:apply-templates select="deidentifiedPurposeList" mode="deidentifiedPurposeListType" />
<xsl:apply-templates select="dataUsageMarketingAllowed" mode="copy" />
<xsl:apply-templates select="personalInformationUpdatedFromSource" mode="copy" />
<xsl:apply-templates select="dataBreachNotification" mode="copy" />
<xsl:apply-templates select="dataBreachContactList" mode="gCoreContactListType" />
<xsl:apply-templates select="employeesMustComplyWithAgreement" mode="copy" />
<xsl:apply-templates select="employeeConfidentialityAgreement" mode="copy" />
<xsl:apply-templates select="employeeTrainingList" mode="employeeTrainingListType" />
<xsl:apply-templates select="passwordEmployeeAccessStandard" mode="passwordEmployeeAccessStandardType" />
<xsl:apply-templates select="securityTestRequiredList" mode="securityTestRequiredListType" />
<xsl:apply-templates select="countryImpactedList" mode="countryImpactedListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="dataSubProcessorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="subProcessorName" mode="copy" />
<xsl:apply-templates select="privacyPolicyURL" mode="copy" />
<xsl:apply-templates select="privacyContactList" mode="gCoreContactListType" />
<xsl:apply-templates select="purposeList" mode="purposeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="appIDListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="appID" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="adapterFingerprintListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="adapterFingerprint" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="deidentifiedPurposeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="deidentifiedPurpose" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="purposeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="purpose" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="alternatePurposeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="alternatePurpose" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="conditionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="condition" mode="conditionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="conditionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="typeOfCondition" mode="copy" />
<xsl:apply-templates select="conditionName" mode="copy" />
<xsl:apply-templates select="conditionDescription" mode="copy" />
<xsl:apply-templates select="propertyList" mode="propertyNVListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="zoneContextListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zoneContext" mode="zoneContextType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="zoneContextType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="zoneId" mode="gCoreLocalIdType" />
<xsl:apply-templates select="contextId" mode="gCoreLocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="endpointListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="endpoint" mode="endpointType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="endpointType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="endpointURL" mode="copy" />
<xsl:apply-templates select="endpointProviderName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="employeeTrainingListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="employeeTraining" mode="employeeTrainingType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="employeeTrainingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="trainingName" mode="copy" />
<xsl:apply-templates select="trainingURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="passwordEmployeeAccessStandardType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="standardName" mode="copy" />
<xsl:apply-templates select="standardURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="countryImpactedListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="countryImpacted" mode="countryImpactedType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="countryImpactedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="country" mode="gCoreCountryType" />
<xsl:apply-templates select="usage" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="securityTestRequiredListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="securityTestRequired" mode="securityTestRequiredType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="securityTestRequiredType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="testType" mode="copy" />
<xsl:apply-templates select="testFrequency" mode="copy" />
<xsl:apply-templates select="remediationRequiredIn" mode="copy" />
<xsl:apply-templates select="shareResults" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="propertyNVListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="property" mode="propertyNVType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="propertyNVType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="propertyName" mode="copy" />
<xsl:apply-templates select="propertyValue" mode="copy" />
</xsl:copy>
</xsl:template>
</xsl:stylesheet>
