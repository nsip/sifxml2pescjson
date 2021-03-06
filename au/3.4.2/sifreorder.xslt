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
<xsl:template match="Activity" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Preamble" mode="copy" />
<xsl:apply-templates select="TechnicalRequirements" mode="TechnicalRequirementsType" />
<xsl:apply-templates select="SoftwareRequirementList" mode="SoftwareRequirementListType" />
<xsl:apply-templates select="EssentialMaterials" mode="EssentialMaterialsType" />
<xsl:apply-templates select="LearningObjectives" mode="LearningObjectivesType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardsType" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="Prerequisites" mode="PrerequisitesType" />
<xsl:apply-templates select="Students" mode="StudentsType" />
<xsl:apply-templates select="SourceObjects" mode="SourceObjectsType" />
<xsl:apply-templates select="Points" mode="copy" />
<xsl:apply-templates select="ActivityTime" mode="ActivityTimeType" />
<xsl:apply-templates select="AssessmentRefId" mode="copy" />
<xsl:apply-templates select="MaxAttemptsAllowed" mode="copy" />
<xsl:apply-templates select="ActivityWeight" mode="copy" />
<xsl:apply-templates select="Evaluation" mode="Activity__Evaluation" />
<xsl:apply-templates select="LearningResources" mode="LearningResourcesType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="Activity__Evaluation">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="AggregateCharacteristicInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Definition" mode="copy" />
<xsl:apply-templates select="ElementName" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AggregateStatisticFact" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AggregateStatisticInfoRefId" mode="copy" />
<xsl:apply-templates select="Characteristics" mode="CharacteristicsType" />
<xsl:apply-templates select="Excluded" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AggregateStatisticInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatisticName" mode="copy" />
<xsl:apply-templates select="CalculationRule" mode="copy" />
<xsl:apply-templates select="ApprovalDate" mode="copy" />
<xsl:apply-templates select="ExpirationDate" mode="copy" />
<xsl:apply-templates select="ExclusionRules" mode="ExclusionRulesType" />
<xsl:apply-templates select="Source" mode="copy" />
<xsl:apply-templates select="EffectiveDate" mode="copy" />
<xsl:apply-templates select="DiscontinueDate" mode="copy" />
<xsl:apply-templates select="Location" mode="LocationType" />
<xsl:apply-templates select="Measure" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CalendarDate" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="CalendarSummaryRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="CalendarDateType" mode="CalendarDateInfoType" />
<xsl:apply-templates select="CalendarDateNumber" mode="copy" />
<xsl:apply-templates select="StudentAttendance" mode="AttendanceInfoType" />
<xsl:apply-templates select="TeacherAttendance" mode="AttendanceInfoType" />
<xsl:apply-templates select="AdministratorAttendance" mode="AttendanceInfoType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CalendarSummary" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="DaysInSession" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="FirstInstructionDate" mode="copy" />
<xsl:apply-templates select="LastInstructionDate" mode="copy" />
<xsl:apply-templates select="GraduationDate" mode="GraduationDateType" />
<xsl:apply-templates select="InstructionalMinutes" mode="copy" />
<xsl:apply-templates select="MinutesPerDay" mode="copy" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="EquipmentInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="AssetNumber" mode="LocalIdType" />
<xsl:apply-templates select="InvoiceRefId" mode="copy" />
<xsl:apply-templates select="PurchaseOrderRefId" mode="copy" />
<xsl:apply-templates select="EquipmentType" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="GradingAssignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeachingGroupRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="GradingCategory" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="PointsPossible" mode="copy" />
<xsl:apply-templates select="CreateDate" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
<xsl:apply-templates select="Weight" mode="copy" />
<xsl:apply-templates select="MaxAttemptsAllowed" mode="copy" />
<xsl:apply-templates select="DetailedDescriptionURL" mode="copy" />
<xsl:apply-templates select="DetailedDescriptionBinary" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="GradingAssignmentScore" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="StudentPersonalLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TeachingGroupRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="GradingAssignmentRefId" mode="copy" />
<xsl:apply-templates select="ScorePoints" mode="copy" />
<xsl:apply-templates select="ScorePercent" mode="copy" />
<xsl:apply-templates select="ScoreLetter" mode="copy" />
<xsl:apply-templates select="ScoreDescription" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Identity" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="AuthenticationSource" mode="copy" />
<xsl:apply-templates select="IdentityAssertions" mode="IdentityAssertionsType" />
<xsl:apply-templates select="PasswordList" mode="PasswordListType" />
<xsl:apply-templates select="AuthenticationSourceGlobalUID" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LEAInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="CommonwealthId" mode="copy" />
<xsl:apply-templates select="LEAName" mode="copy" />
<xsl:apply-templates select="LEAURL" mode="copy" />
<xsl:apply-templates select="EducationAgencyType" mode="AgencyType" />
<xsl:apply-templates select="LEAContactList" mode="LEAContactListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="OperationalStatus" mode="OperationalStatusType" />
<xsl:apply-templates select="JurisdictionLowerHouse" mode="copy" />
<xsl:apply-templates select="SLA" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningResource" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Author" mode="copy" />
<xsl:apply-templates select="Contacts" mode="ContactsType" />
<xsl:apply-templates select="Location" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="SubjectAreas" mode="ACStrandAreaListType" />
<xsl:apply-templates select="MediaTypes" mode="MediaTypesType" />
<xsl:apply-templates select="UseAgreement" mode="copy" />
<xsl:apply-templates select="AgreementDate" mode="copy" />
<xsl:apply-templates select="Approvals" mode="ApprovalsType" />
<xsl:apply-templates select="Evaluations" mode="EvaluationsType" />
<xsl:apply-templates select="Components" mode="ComponentsType" />
<xsl:apply-templates select="LearningStandards" mode="LearningStandardsType" />
<xsl:apply-templates select="LearningResourcePackageRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningResourcePackage" mode="object">
<xsl:apply-templates select="." mode="AbstractContentPackageType" />
</xsl:template>
<xsl:template match="LearningStandardDocument" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="RichDescription" mode="AbstractContentElementType" />
<xsl:apply-templates select="Source" mode="copy" />
<xsl:apply-templates select="Organizations" mode="OrganizationsType" />
<xsl:apply-templates select="Authors" mode="AuthorsType" />
<xsl:apply-templates select="OrganizationContactPoint" mode="copy" />
<xsl:apply-templates select="SubjectAreas" mode="ACStrandAreaListType" />
<xsl:apply-templates select="DocumentStatus" mode="copy" />
<xsl:apply-templates select="DocumentDate" mode="copy" />
<xsl:apply-templates select="LocalAdoptionDate" mode="copy" />
<xsl:apply-templates select="LocalArchiveDate" mode="copy" />
<xsl:apply-templates select="EndOfLifeDate" mode="copy" />
<xsl:apply-templates select="Copyright" mode="LearningStandardDocument__Copyright" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="RepositoryDate" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
<xsl:apply-templates select="RelatedLearningStandards" mode="LearningStandardsDocumentType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardDocument__Copyright">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Holder" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningStandardItem" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Resources" mode="LResourcesType" />
<xsl:apply-templates select="StandardSettingBody" mode="LearningStandardItem__StandardSettingBody" />
<xsl:apply-templates select="StandardHierarchyLevel" mode="LearningStandardItem__StandardHierarchyLevel" />
<xsl:apply-templates select="PredecessorItems" mode="LearningStandardsType" />
<xsl:apply-templates select="StatementCodes" mode="StatementCodesType" />
<xsl:apply-templates select="Statements" mode="StatementsType" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="ACStrandSubjectArea" mode="ACStrandSubjectAreaType" />
<xsl:apply-templates select="StandardIdentifier" mode="LearningStandardItem__StandardIdentifier" />
<xsl:apply-templates select="LearningStandardDocumentRefId" mode="copy" />
<xsl:apply-templates select="RelatedLearningStandardItems" mode="LearningStandardItem__RelatedLearningStandardItems" />
<xsl:apply-templates select="Level4" mode="copy" />
<xsl:apply-templates select="Level5" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardItem__StandardSettingBody">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Country" mode="CountryType" />
<xsl:apply-templates select="StateProvince" mode="StateProvinceType" />
<xsl:apply-templates select="SettingBodyName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardItem__StandardHierarchyLevel">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardItem__StandardIdentifier">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="YearCreated" mode="copy" />
<xsl:apply-templates select="ACStrandSubjectArea" mode="ACStrandSubjectAreaType" />
<xsl:apply-templates select="StandardNumber" mode="copy" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="Benchmark" mode="copy" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="IndicatorNumber" mode="copy" />
<xsl:apply-templates select="AlternateIdentificationCodes" mode="LearningStandardItem__StandardIdentifier__AlternateIdentificationCodes" />
<xsl:apply-templates select="Organization" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardItem__StandardIdentifier__AlternateIdentificationCodes">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlternateIdentificationCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardItem__RelatedLearningStandardItems">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="PersonPicture" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentObjectRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="PictureSource" mode="URIOrBinaryType" />
<xsl:apply-templates select="OKToPublish" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PersonalisedPlan" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanCategory" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanStartDate" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanEndDate" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanReviewDate" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanNotes" mode="copy" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="AssociatedAttachment" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ResourceBooking" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResourceRefId" mode="copy" />
<xsl:apply-templates select="ResourceLocalId" mode="LocalIdType" />
<xsl:apply-templates select="StartDateTime" mode="copy" />
<xsl:apply-templates select="FinishDateTime" mode="copy" />
<xsl:apply-templates select="FromPeriod" mode="LocalIdType" />
<xsl:apply-templates select="ToPeriod" mode="LocalIdType" />
<xsl:apply-templates select="Booker" mode="copy" />
<xsl:apply-templates select="Reason" mode="copy" />
<xsl:apply-templates select="ScheduledActivityRefId" mode="copy" />
<xsl:apply-templates select="KeepOld" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ResourceUsage" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="ResourceUsageContentType" mode="ResourceUsage__ResourceUsageContentType" />
<xsl:apply-templates select="ResourceReportColumnList" mode="ResourceUsage__ResourceReportColumnList" />
<xsl:apply-templates select="ResourceReportLineList" mode="ResourceUsage__ResourceReportLineList" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceUsage__ResourceUsageContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="LocalDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceUsage__ResourceReportColumnList">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResourceReportColumn" mode="ResourceUsage__ResourceReportColumnList__ResourceReportColumn" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceUsage__ResourceReportColumnList__ResourceReportColumn">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ColumnName" mode="copy" />
<xsl:apply-templates select="ColumnDescription" mode="copy" />
<xsl:apply-templates select="ColumnDelimiter" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceUsage__ResourceReportLineList">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResourceReportLine" mode="ResourceUsage__ResourceReportLineList__ResourceReportLine" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceUsage__ResourceReportLineList__ResourceReportLine">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="CurrentCost" mode="MonetaryAmountType" />
<xsl:apply-templates select="ReportRow" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="RoomInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="RoomNumber" mode="copy" />
<xsl:apply-templates select="StaffList" mode="StaffListType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Building" mode="copy" />
<xsl:apply-templates select="HomeroomNumber" mode="copy" />
<xsl:apply-templates select="Size" mode="copy" />
<xsl:apply-templates select="Capacity" mode="copy" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
<xsl:apply-templates select="RoomType" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ScheduledActivity" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="TimeTableCellRefId" mode="copy" />
<xsl:apply-templates select="DayId" mode="LocalIdType" />
<xsl:apply-templates select="PeriodId" mode="LocalIdType" />
<xsl:apply-templates select="TimeTableRefId" mode="copy" />
<xsl:apply-templates select="ActivityDate" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="FinishTime" mode="copy" />
<xsl:apply-templates select="CellType" mode="copy" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="copy" />
<xsl:apply-templates select="TeacherList" mode="ScheduledTeacherListType" />
<xsl:apply-templates select="RoomList" mode="RoomListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="Location" mode="copy" />
<xsl:apply-templates select="ActivityType" mode="copy" />
<xsl:apply-templates select="ActivityName" mode="copy" />
<xsl:apply-templates select="ActivityComment" mode="copy" />
<xsl:apply-templates select="StudentList" mode="StudentsType" />
<xsl:apply-templates select="TeachingGroupList" mode="TeachingGroupListType" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="Override" mode="ScheduledActivityOverrideType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SchoolCourseInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="TermInfoRefId" mode="copy" />
<xsl:apply-templates select="CourseCode" mode="copy" />
<xsl:apply-templates select="StateCourseCode" mode="copy" />
<xsl:apply-templates select="DistrictCourseCode" mode="copy" />
<xsl:apply-templates select="SubjectAreaList" mode="SubjectAreaListType" />
<xsl:apply-templates select="CourseTitle" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="InstructionalLevel" mode="copy" />
<xsl:apply-templates select="CourseCredits" mode="copy" />
<xsl:apply-templates select="CoreAcademicCourse" mode="copy" />
<xsl:apply-templates select="GraduationRequirement" mode="copy" />
<xsl:apply-templates select="Department" mode="copy" />
<xsl:apply-templates select="CourseContent" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SchoolInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="CommonwealthId" mode="copy" />
<xsl:apply-templates select="ACARAId" mode="copy" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="SchoolName" mode="copy" />
<xsl:apply-templates select="LEAInfoRefId" mode="RefIdType" />
<xsl:apply-templates select="OtherLEA" mode="RefIdType" />
<xsl:apply-templates select="SchoolDistrict" mode="copy" />
<xsl:apply-templates select="SchoolDistrictLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolType" mode="copy" />
<xsl:apply-templates select="SchoolFocusList" mode="SchoolFocusListType" />
<xsl:apply-templates select="SchoolURL" mode="SchoolURLType" />
<xsl:apply-templates select="SchoolEmailList" mode="EmailListType" />
<xsl:apply-templates select="PrincipalInfo" mode="PrincipalInfoType" />
<xsl:apply-templates select="SchoolContactList" mode="SchoolContactListType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="SessionType" mode="copy" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="ARIA" mode="copy" />
<xsl:apply-templates select="OperationalStatus" mode="OperationalStatusType" />
<xsl:apply-templates select="FederalElectorate" mode="copy" />
<xsl:apply-templates select="Campus" mode="CampusContainerType" />
<xsl:apply-templates select="SchoolSector" mode="copy" />
<xsl:apply-templates select="IndependentSchool" mode="copy" />
<xsl:apply-templates select="NonGovSystemicStatus" mode="copy" />
<xsl:apply-templates select="System" mode="copy" />
<xsl:apply-templates select="ReligiousAffiliation" mode="copy" />
<xsl:apply-templates select="SchoolGeographicLocation" mode="copy" />
<xsl:apply-templates select="LocalGovernmentArea" mode="copy" />
<xsl:apply-templates select="JurisdictionLowerHouse" mode="copy" />
<xsl:apply-templates select="SLA" mode="copy" />
<xsl:apply-templates select="SchoolCoEdStatus" mode="copy" />
<xsl:apply-templates select="BoardingSchoolStatus" mode="copy" />
<xsl:apply-templates select="YearLevelEnrollmentList" mode="YearLevelEnrollmentListType" />
<xsl:apply-templates select="TotalEnrollments" mode="TotalEnrollmentsType" />
<xsl:apply-templates select="Entity_Open" mode="copy" />
<xsl:apply-templates select="Entity_Close" mode="copy" />
<xsl:apply-templates select="SchoolGroupList" mode="SchoolGroupListType" />
<xsl:apply-templates select="SchoolTimeZone" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SchoolPrograms" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="SchoolProgramList" mode="SchoolProgramListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SectionInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolCourseInfoRefId" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="copy" />
<xsl:apply-templates select="TermInfoRefId" mode="copy" />
<xsl:apply-templates select="MediumOfInstruction" mode="MediumOfInstructionType" />
<xsl:apply-templates select="LanguageOfInstruction" mode="LanguageOfInstructionType" />
<xsl:apply-templates select="LocationOfInstruction" mode="LocationOfInstructionType" />
<xsl:apply-templates select="SummerSchool" mode="copy" />
<xsl:apply-templates select="SchoolCourseInfoOverride" mode="SchoolCourseInfoOverrideType" />
<xsl:apply-templates select="CourseSectionCode" mode="copy" />
<xsl:apply-templates select="SectionCode" mode="copy" />
<xsl:apply-templates select="CountForAttendance" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SessionInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="TimeTableCellRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="TimeTableSubjectLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TeachingGroupLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="StaffPersonalLocalId" mode="LocalIdType" />
<xsl:apply-templates select="RoomNumber" mode="copy" />
<xsl:apply-templates select="DayId" mode="LocalIdType" />
<xsl:apply-templates select="PeriodId" mode="LocalIdType" />
<xsl:apply-templates select="SessionDate" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="FinishTime" mode="copy" />
<xsl:apply-templates select="RollMarked" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StaffAssignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="PrimaryAssignment" mode="copy" />
<xsl:apply-templates select="JobStartDate" mode="copy" />
<xsl:apply-templates select="JobEndDate" mode="copy" />
<xsl:apply-templates select="JobFTE" mode="copy" />
<xsl:apply-templates select="JobFunction" mode="copy" />
<xsl:apply-templates select="EmploymentStatus" mode="copy" />
<xsl:apply-templates select="StaffSubjectList" mode="StaffSubjectListType" />
<xsl:apply-templates select="StaffActivity" mode="StaffActivityExtensionType" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="CasualReliefTeacher" mode="copy" />
<xsl:apply-templates select="Homegroup" mode="copy" />
<xsl:apply-templates select="House" mode="copy" />
<xsl:apply-templates select="CalendarSummaryList" mode="CalendarSummaryListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StaffPersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="ElectronicIdList" mode="ElectronicIdListType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="PersonInfo" mode="PersonInfoType" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="EmploymentStatus" mode="copy" />
<xsl:apply-templates select="MostRecent" mode="StaffMostRecentContainerType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentActivityInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="StudentActivityType" mode="StudentActivityType" />
<xsl:apply-templates select="StudentActivityLevel" mode="copy" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="CurricularStatus" mode="copy" />
<xsl:apply-templates select="Location" mode="LocationType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentActivityParticipation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="StudentActivityInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="ParticipationComment" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Role" mode="copy" />
<xsl:apply-templates select="RecognitionList" mode="RecognitionListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentAttendanceSummary" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="StartDay" mode="copy" />
<xsl:apply-templates select="EndDay" mode="copy" />
<xsl:apply-templates select="FTE" mode="copy" />
<xsl:apply-templates select="DaysAttended" mode="copy" />
<xsl:apply-templates select="ExcusedAbsences" mode="copy" />
<xsl:apply-templates select="UnexcusedAbsences" mode="copy" />
<xsl:apply-templates select="DaysTardy" mode="copy" />
<xsl:apply-templates select="DaysInMembership" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentAttendanceTimeList" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="AttendanceTimes" mode="AttendanceTimesType" />
<xsl:apply-templates select="PeriodAttendances" mode="PeriodAttendancesType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentContactPersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="PersonInfo" mode="PersonInfoType" />
<xsl:apply-templates select="EmploymentType" mode="copy" />
<xsl:apply-templates select="SchoolEducationalLevel" mode="EducationalLevelType" />
<xsl:apply-templates select="NonSchoolEducation" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentContactRelationship" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="RefIdType" />
<xsl:apply-templates select="StudentContactPersonalRefId" mode="RefIdType" />
<xsl:apply-templates select="Relationship" mode="RelationshipType" />
<xsl:apply-templates select="ParentRelationshipStatus" mode="copy" />
<xsl:apply-templates select="HouseholdList" mode="copy" />
<xsl:apply-templates select="ContactFlags" mode="ContactFlagsType" />
<xsl:apply-templates select="MainlySpeaksEnglishAtHome" mode="copy" />
<xsl:apply-templates select="ContactSequence" mode="copy" />
<xsl:apply-templates select="ContactSequenceSource" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentDailyAttendance" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="DayValue" mode="copy" />
<xsl:apply-templates select="AttendanceCode" mode="AttendanceCodeType" />
<xsl:apply-templates select="AttendanceStatus" mode="copy" />
<xsl:apply-templates select="TimeIn" mode="copy" />
<xsl:apply-templates select="TimeOut" mode="copy" />
<xsl:apply-templates select="AbsenceValue" mode="copy" />
<xsl:apply-templates select="AttendanceNote" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentParticipation" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="StudentParticipationAsOfDate" mode="copy" />
<xsl:apply-templates select="ProgramType" mode="copy" />
<xsl:apply-templates select="ProgramFundingSources" mode="ProgramFundingSourcesType" />
<xsl:apply-templates select="ManagingSchool" mode="copy" />
<xsl:apply-templates select="ReferralDate" mode="copy" />
<xsl:apply-templates select="ReferralSource" mode="ReferralSourceType" />
<xsl:apply-templates select="ProgramStatus" mode="ProgramStatusType" />
<xsl:apply-templates select="GiftedEligibilityCriteria" mode="copy" />
<xsl:apply-templates select="EvaluationParentalConsentDate" mode="copy" />
<xsl:apply-templates select="EvaluationDate" mode="copy" />
<xsl:apply-templates select="EvaluationExtensionDate" mode="copy" />
<xsl:apply-templates select="ExtensionComments" mode="copy" />
<xsl:apply-templates select="ReevaluationDate" mode="copy" />
<xsl:apply-templates select="ProgramEligibilityDate" mode="copy" />
<xsl:apply-templates select="ProgramPlanDate" mode="copy" />
<xsl:apply-templates select="ProgramPlanEffectiveDate" mode="copy" />
<xsl:apply-templates select="NOREPDate" mode="copy" />
<xsl:apply-templates select="PlacementParentalConsentDate" mode="copy" />
<xsl:apply-templates select="ProgramPlacementDate" mode="copy" />
<xsl:apply-templates select="ExtendedSchoolYear" mode="copy" />
<xsl:apply-templates select="ExtendedDay" mode="copy" />
<xsl:apply-templates select="ProgramAvailability" mode="ProgramAvailabilityType" />
<xsl:apply-templates select="EntryPerson" mode="copy" />
<xsl:apply-templates select="StudentSpecialEducationFTE" mode="copy" />
<xsl:apply-templates select="ParticipationContact" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentPeriodAttendance" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="SessionInfoRefId" mode="copy" />
<xsl:apply-templates select="ScheduledActivityRefId" mode="copy" />
<xsl:apply-templates select="TimetablePeriod" mode="copy" />
<xsl:apply-templates select="TimeIn" mode="copy" />
<xsl:apply-templates select="TimeOut" mode="copy" />
<xsl:apply-templates select="AttendanceCode" mode="AttendanceCodeType" />
<xsl:apply-templates select="AttendanceStatus" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="AuditInfo" mode="AuditInfoType" />
<xsl:apply-templates select="AttendanceComment" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentPersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlertMessages" mode="AlertMessagesType" />
<xsl:apply-templates select="MedicalAlertMessages" mode="MedicalAlertMessagesType" />
<xsl:apply-templates select="LocalId" mode="copy" />
<xsl:apply-templates select="StateProvinceId" mode="copy" />
<xsl:apply-templates select="ElectronicIdList" mode="ElectronicIdListType" />
<xsl:apply-templates select="OtherIdList" mode="OtherIdListType" />
<xsl:apply-templates select="PersonInfo" mode="PersonInfoType" />
<xsl:apply-templates select="ProjectedGraduationYear" mode="ProjectedGraduationYearType" />
<xsl:apply-templates select="OnTimeGraduationYear" mode="OnTimeGraduationYearType" />
<xsl:apply-templates select="GraduationDate" mode="GraduationDateType" />
<xsl:apply-templates select="MostRecent" mode="StudentMostRecentContainerType" />
<xsl:apply-templates select="AcceptableUsePolicy" mode="copy" />
<xsl:apply-templates select="GiftedTalented" mode="copy" />
<xsl:apply-templates select="EconomicDisadvantage" mode="copy" />
<xsl:apply-templates select="ESL" mode="copy" />
<xsl:apply-templates select="ESLDateAssessed" mode="copy" />
<xsl:apply-templates select="YoungCarersRole" mode="copy" />
<xsl:apply-templates select="Disability" mode="copy" />
<xsl:apply-templates select="IntegrationAide" mode="copy" />
<xsl:apply-templates select="EducationSupport" mode="copy" />
<xsl:apply-templates select="HomeSchooledStudent" mode="copy" />
<xsl:apply-templates select="Sensitive" mode="copy" />
<xsl:apply-templates select="OfflineDelivery" mode="copy" />
<xsl:apply-templates select="PrePrimaryEducation" mode="copy" />
<xsl:apply-templates select="FirstAUSchoolEnrollment" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSchoolEnrollment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="LocalId" mode="copy" />
<xsl:apply-templates select="MembershipType" mode="copy" />
<xsl:apply-templates select="TimeFrame" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="EntryType" mode="StudentEntryContainerType" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="Homeroom" mode="copy" />
<xsl:apply-templates select="Advisor" mode="copy" />
<xsl:apply-templates select="Counselor" mode="copy" />
<xsl:apply-templates select="Homegroup" mode="copy" />
<xsl:apply-templates select="ACARASchoolId" mode="LocalIdType" />
<xsl:apply-templates select="ClassCode" mode="copy" />
<xsl:apply-templates select="TestLevel" mode="YearLevelType" />
<xsl:apply-templates select="ReportingSchool" mode="copy" />
<xsl:apply-templates select="House" mode="copy" />
<xsl:apply-templates select="IndividualLearningPlan" mode="copy" />
<xsl:apply-templates select="Calendar" mode="copy" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="ExitStatus" mode="StudentExitStatusContainerType" />
<xsl:apply-templates select="ExitType" mode="StudentExitContainerType" />
<xsl:apply-templates select="FTE" mode="copy" />
<xsl:apply-templates select="FTPTStatus" mode="copy" />
<xsl:apply-templates select="FFPOS" mode="copy" />
<xsl:apply-templates select="CatchmentStatus" mode="CatchmentStatusContainerType" />
<xsl:apply-templates select="RecordClosureReason" mode="copy" />
<xsl:apply-templates select="PromotionInfo" mode="PromotionInfoType" />
<xsl:apply-templates select="PreviousSchool" mode="LocalIdType" />
<xsl:apply-templates select="DestinationSchool" mode="LocalIdType" />
<xsl:apply-templates select="StudentSubjectChoiceList" mode="StudentSubjectChoiceListType" />
<xsl:apply-templates select="StartedAtSchoolDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSectionEnrollment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SectionInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="ExitDate" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SystemRole" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="copy" />
<xsl:apply-templates select="SystemContextList" mode="SystemRole__SystemContextList" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRole__SystemContextList">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SystemContext" mode="SystemRole__SystemContextList__SystemContext" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRole__SystemContextList__SystemContext">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleList" mode="SystemRole__SystemContextList__SystemContext__RoleList" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRole__SystemContextList__SystemContext__RoleList">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Role" mode="SystemRole__SystemContextList__SystemContext__RoleList__Role" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRole__SystemContextList__SystemContext__RoleList__Role">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleScopeList" mode="SystemRole__SystemContextList__SystemContext__RoleList__Role__RoleScopeList" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRole__SystemContextList__SystemContext__RoleList__Role__RoleScopeList">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleScope" mode="SystemRole__SystemContextList__SystemContext__RoleList__Role__RoleScopeList__RoleScope" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRole__SystemContextList__SystemContext__RoleList__Role__RoleScopeList__RoleScope">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleScopeName" mode="copy" />
<xsl:apply-templates select="RoleScopeRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="TeachingGroup" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="ShortName" mode="copy" />
<xsl:apply-templates select="LongName" mode="copy" />
<xsl:apply-templates select="GroupType" mode="copy" />
<xsl:apply-templates select="Set" mode="copy" />
<xsl:apply-templates select="Block" mode="copy" />
<xsl:apply-templates select="CurriculumLevel" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="RefIdType" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolCourseInfoRefId" mode="RefIdType" />
<xsl:apply-templates select="SchoolCourseLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="RefIdType" />
<xsl:apply-templates select="TimeTableSubjectLocalId" mode="LocalIdType" />
<xsl:apply-templates select="Semester" mode="copy" />
<xsl:apply-templates select="StudentList" mode="StudentListType" />
<xsl:apply-templates select="TeacherList" mode="TeacherListType" />
<xsl:apply-templates select="MinClassSize" mode="copy" />
<xsl:apply-templates select="MaxClassSize" mode="copy" />
<xsl:apply-templates select="TeachingGroupPeriodList" mode="TeachingGroupPeriodListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TermInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="RelativeDuration" mode="copy" />
<xsl:apply-templates select="TermCode" mode="copy" />
<xsl:apply-templates select="Track" mode="copy" />
<xsl:apply-templates select="TermSpan" mode="copy" />
<xsl:apply-templates select="MarkingTerm" mode="copy" />
<xsl:apply-templates select="SchedulingTerm" mode="copy" />
<xsl:apply-templates select="AttendanceTerm" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TimeTable" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="DaysPerCycle" mode="copy" />
<xsl:apply-templates select="PeriodsPerDay" mode="copy" />
<xsl:apply-templates select="TeachingPeriodsPerDay" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolName" mode="copy" />
<xsl:apply-templates select="TimeTableCreationDate" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="TimeTableDayList" mode="TimeTableDayListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TimeTableCell" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeTableRefId" mode="copy" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="copy" />
<xsl:apply-templates select="TeachingGroupRefId" mode="copy" />
<xsl:apply-templates select="RoomInfoRefId" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="TimeTableLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SubjectLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TeachingGroupLocalId" mode="LocalIdType" />
<xsl:apply-templates select="RoomNumber" mode="HomeroomNumberType" />
<xsl:apply-templates select="StaffLocalId" mode="LocalIdType" />
<xsl:apply-templates select="DayId" mode="LocalIdType" />
<xsl:apply-templates select="PeriodId" mode="LocalIdType" />
<xsl:apply-templates select="CellType" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TeacherList" mode="ScheduledTeacherListType" />
<xsl:apply-templates select="RoomList" mode="RoomListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TimeTableSubject" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubjectLocalId" mode="LocalIdType" />
<xsl:apply-templates select="AcademicYear" mode="YearLevelType" />
<xsl:apply-templates select="AcademicYearRange" mode="YearRangeType" />
<xsl:apply-templates select="CourseLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolCourseInfoRefId" mode="RefIdType" />
<xsl:apply-templates select="Faculty" mode="copy" />
<xsl:apply-templates select="SubjectShortName" mode="copy" />
<xsl:apply-templates select="SubjectLongName" mode="copy" />
<xsl:apply-templates select="SubjectType" mode="copy" />
<xsl:apply-templates select="ProposedMaxClassSize" mode="copy" />
<xsl:apply-templates select="ProposedMinClassSize" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="Semester" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingAlert" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="WellbeingAlertStartDate" mode="copy" />
<xsl:apply-templates select="WellbeingAlertEndDate" mode="copy" />
<xsl:apply-templates select="WellbeingAlertCategory" mode="copy" />
<xsl:apply-templates select="WellbeingAlertDescription" mode="copy" />
<xsl:apply-templates select="EnrolmentRestricted" mode="copy" />
<xsl:apply-templates select="AlertAudience" mode="copy" />
<xsl:apply-templates select="AlertSeverity" mode="copy" />
<xsl:apply-templates select="AlertKeyContact" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingAppeal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="WellbeingResponseRefId" mode="copy" />
<xsl:apply-templates select="LocalAppealId" mode="LocalIdType" />
<xsl:apply-templates select="AppealStatusCode" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="AppealNotes" mode="copy" />
<xsl:apply-templates select="AppealOutcome" mode="copy" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingCharacteristic" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicClassification" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicStartDate" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicEndDate" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicReviewDate" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicNotes" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicCategory" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicSubCategory" mode="copy" />
<xsl:apply-templates select="LocalCharacteristicCode" mode="copy" />
<xsl:apply-templates select="CharacteristicSeverity" mode="copy" />
<xsl:apply-templates select="DailyManagement" mode="copy" />
<xsl:apply-templates select="EmergencyManagement" mode="copy" />
<xsl:apply-templates select="EmergencyResponsePlan" mode="copy" />
<xsl:apply-templates select="Trigger" mode="copy" />
<xsl:apply-templates select="ConfidentialFlag" mode="copy" />
<xsl:apply-templates select="Alert" mode="copy" />
<xsl:apply-templates select="MedicationList" mode="MedicationListType" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingEvent" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="EventId" mode="copy" />
<xsl:apply-templates select="WellbeingEventNotes" mode="copy" />
<xsl:apply-templates select="WellbeingEventCategoryClass" mode="copy" />
<xsl:apply-templates select="WellbeingEventCategoryList" mode="WellbeingEventCategoryListType" />
<xsl:apply-templates select="ReportingStaffRefId" mode="copy" />
<xsl:apply-templates select="WellbeingEventLocationDetails" mode="WellbeingEventLocationDetailsType" />
<xsl:apply-templates select="WellbeingEventCreationTimeStamp" mode="copy" />
<xsl:apply-templates select="WellbeingEventDate" mode="copy" />
<xsl:apply-templates select="WellbeingEventTime" mode="copy" />
<xsl:apply-templates select="WellbeingEventDescription" mode="copy" />
<xsl:apply-templates select="WellbeingEventTimePeriod" mode="copy" />
<xsl:apply-templates select="ConfidentialFlag" mode="copy" />
<xsl:apply-templates select="PersonInvolvementList" mode="PersonInvolvementListType" />
<xsl:apply-templates select="FollowUpActionList" mode="FollowUpActionListType" />
<xsl:apply-templates select="Status" mode="copy" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingResponse" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="WellbeingResponseStartDate" mode="copy" />
<xsl:apply-templates select="WellbeingResponseEndDate" mode="copy" />
<xsl:apply-templates select="WellbeingResponseCategory" mode="copy" />
<xsl:apply-templates select="WellbeingResponseNotes" mode="copy" />
<xsl:apply-templates select="PersonInvolvementList" mode="PersonInvolvementListType" />
<xsl:apply-templates select="Suspension" mode="SuspensionContainerType" />
<xsl:apply-templates select="Detention" mode="DetentionContainerType" />
<xsl:apply-templates select="PlanRequired" mode="PlanRequiredContainerType" />
<xsl:apply-templates select="Award" mode="AwardContainerType" />
<xsl:apply-templates select="OtherResponse" mode="OtherWellbeingResponseContainerType" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ChargedLocationInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocationType" mode="copy" />
<xsl:apply-templates select="SiteCategory" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="ParentChargedLocationInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Debtor" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="BilledEntity" mode="copy" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="BillingName" mode="copy" />
<xsl:apply-templates select="BillingNote" mode="copy" />
<xsl:apply-templates select="Discount" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialAccount" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentAccountRefId" mode="copy" />
<xsl:apply-templates select="ChargedLocationInfoRefId" mode="copy" />
<xsl:apply-templates select="AccountNumber" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ClassType" mode="copy" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="CreationTime" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Invoice" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="InvoicedEntity" mode="copy" />
<xsl:apply-templates select="FormNumber" mode="LocalIdType" />
<xsl:apply-templates select="BillingDate" mode="copy" />
<xsl:apply-templates select="TransactionDescription" mode="copy" />
<xsl:apply-templates select="BilledAmount" mode="DebitOrCreditAmountType" />
<xsl:apply-templates select="Ledger" mode="copy" />
<xsl:apply-templates select="ChargedLocationInfoRefId" mode="copy" />
<xsl:apply-templates select="NetAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="TaxRate" mode="copy" />
<xsl:apply-templates select="TaxType" mode="copy" />
<xsl:apply-templates select="TaxAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="CreatedBy" mode="copy" />
<xsl:apply-templates select="ApprovedBy" mode="copy" />
<xsl:apply-templates select="ItemDetail" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
<xsl:apply-templates select="FinancialAccountRefIdList" mode="FinancialAccountRefIdListType" />
<xsl:apply-templates select="AccountingPeriod" mode="LocalIdType" />
<xsl:apply-templates select="RelatedPurchaseOrderRefId" mode="copy" />
<xsl:apply-templates select="PurchasingItems" mode="PurchasingItemsType" />
<xsl:apply-templates select="Voluntary" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Journal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DebitFinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="CreditFinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="OriginatingTransactionRefId" mode="copy" />
<xsl:apply-templates select="Amount" mode="MonetaryAmountType" />
<xsl:apply-templates select="GSTCodeOriginal" mode="copy" />
<xsl:apply-templates select="GSTCodeReplacement" mode="copy" />
<xsl:apply-templates select="Note" mode="copy" />
<xsl:apply-templates select="CreatedDate" mode="copy" />
<xsl:apply-templates select="ApprovedDate" mode="copy" />
<xsl:apply-templates select="CreatedBy" mode="copy" />
<xsl:apply-templates select="ApprovedBy" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPCodeFrame" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="TestContent" mode="NAPTestContentType" />
<xsl:apply-templates select="TestletList" mode="NAPCodeFrameTestletListType" />
<xsl:apply-templates select="SIF_Metadata" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPEventStudentLink" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="PlatformStudentIdentifier" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolACARAId" mode="LocalIdType" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="copy" />
<xsl:apply-templates select="SchoolSector" mode="copy" />
<xsl:apply-templates select="System" mode="copy" />
<xsl:apply-templates select="SchoolGeolocation" mode="copy" />
<xsl:apply-templates select="ReportingSchoolName" mode="copy" />
<xsl:apply-templates select="NAPJurisdiction" mode="copy" />
<xsl:apply-templates select="ParticipationCode" mode="copy" />
<xsl:apply-templates select="ParticipationText" mode="copy" />
<xsl:apply-templates select="Device" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="LapsedTimeTest" mode="copy" />
<xsl:apply-templates select="ExemptionReason" mode="copy" />
<xsl:apply-templates select="PersonalDetailsChanged" mode="copy" />
<xsl:apply-templates select="PSIOtherIdMatch" mode="copy" />
<xsl:apply-templates select="PossibleDuplicate" mode="copy" />
<xsl:apply-templates select="DOBRange" mode="copy" />
<xsl:apply-templates select="TestDisruptionList" mode="TestDisruptionListType" />
<xsl:apply-templates select="Adjustment" mode="AdjustmentContainerType" />
<xsl:apply-templates select="SIF_Metadata" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPStudentResponseSet" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportExclusionFlag" mode="copy" />
<xsl:apply-templates select="CalibrationSampleFlag" mode="copy" />
<xsl:apply-templates select="EquatingSampleFlag" mode="copy" />
<xsl:apply-templates select="PathTakenForDomain" mode="copy" />
<xsl:apply-templates select="ParallelTest" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="PlatformStudentIdentifier" mode="copy" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="copy" />
<xsl:apply-templates select="DomainScore" mode="DomainScoreType" />
<xsl:apply-templates select="TestletList" mode="NAPStudentResponseTestletListType" />
<xsl:apply-templates select="SIF_Metadata" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTest" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestContent" mode="NAPTestContentType" />
<xsl:apply-templates select="SIF_Metadata" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTestItem" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestItemContent" mode="NAPTestItemContentType" />
<xsl:apply-templates select="SIF_Metadata" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTestScoreSummary" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolACARAId" mode="LocalIdType" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="copy" />
<xsl:apply-templates select="DomainNationalAverage" mode="copy" />
<xsl:apply-templates select="DomainSchoolAverage" mode="copy" />
<xsl:apply-templates select="DomainJurisdictionAverage" mode="copy" />
<xsl:apply-templates select="DomainTopNational60Percent" mode="copy" />
<xsl:apply-templates select="DomainBottomNational60Percent" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTestlet" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="copy" />
<xsl:apply-templates select="TestletContent" mode="NAPTestletContentType" />
<xsl:apply-templates select="TestItemList" mode="NAPTestItemListType" />
<xsl:apply-templates select="SIF_Metadata" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="PaymentReceipt" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TransactionType" mode="copy" />
<xsl:apply-templates select="InvoiceRefId" mode="copy" />
<xsl:apply-templates select="VendorInfoRefId" mode="copy" />
<xsl:apply-templates select="DebtorRefId" mode="copy" />
<xsl:apply-templates select="ChargedLocationInfoRefId" mode="copy" />
<xsl:apply-templates select="TransactionDate" mode="copy" />
<xsl:apply-templates select="TransactionAmount" mode="DebitOrCreditAmountType" />
<xsl:apply-templates select="ReceivedTransactionId" mode="copy" />
<xsl:apply-templates select="FinancialAccountRefIdList" mode="FinancialAccountRefIdListType" />
<xsl:apply-templates select="TransactionDescription" mode="copy" />
<xsl:apply-templates select="TaxRate" mode="copy" />
<xsl:apply-templates select="TaxAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="TransactionMethod" mode="copy" />
<xsl:apply-templates select="ChequeNumber" mode="copy" />
<xsl:apply-templates select="TransactionNote" mode="copy" />
<xsl:apply-templates select="AccountingPeriod" mode="LocalIdType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PurchaseOrder" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FormNumber" mode="copy" />
<xsl:apply-templates select="VendorInfoRefId" mode="copy" />
<xsl:apply-templates select="ChargedLocationInfoRefId" mode="copy" />
<xsl:apply-templates select="EmployeePersonalRefId" mode="copy" />
<xsl:apply-templates select="PurchasingItems" mode="PurchasingItemsType" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="TaxRate" mode="copy" />
<xsl:apply-templates select="TaxAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="TotalAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="UpdateDate" mode="copy" />
<xsl:apply-templates select="FullyDelivered" mode="copy" />
<xsl:apply-templates select="OriginalPurchaseOrderRefId" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="VendorInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
<xsl:apply-templates select="CustomerId" mode="copy" />
<xsl:apply-templates select="ABN" mode="copy" />
<xsl:apply-templates select="RegisteredForGST" mode="copy" />
<xsl:apply-templates select="PaymentTerms" mode="copy" />
<xsl:apply-templates select="BPay" mode="copy" />
<xsl:apply-templates select="BSB" mode="copy" />
<xsl:apply-templates select="AccountNumber" mode="copy" />
<xsl:apply-templates select="AccountName" mode="copy" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportPackageType">
<xsl:apply-templates select="." mode="AbstractContentPackageType" />
</xsl:template>
<xsl:template match="node()|@*" mode="AbstractContentPackageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XMLData" mode="copy" />
<xsl:apply-templates select="TextData" mode="copy" />
<xsl:apply-templates select="BinaryData" mode="copy" />
<xsl:apply-templates select="Reference" mode="AbstractContentPackageType__Reference" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AbstractContentPackageType__Reference">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="URL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AbstractContentElementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XMLData" mode="copy" />
<xsl:apply-templates select="TextData" mode="copy" />
<xsl:apply-templates select="BinaryData" mode="copy" />
<xsl:apply-templates select="Reference" mode="AbstractContentElementType__Reference" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AbstractContentElementType__Reference">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="URL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MonetaryAmountType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ObjectNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ServiceNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ObjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportDataObjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="URIOrBinaryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GUIDType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MsgIdType">
<xsl:apply-templates select="." mode="GUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="RefIdType">
<xsl:apply-templates select="." mode="GUIDType" />
</xsl:template>
<xsl:template match="node()|@*" mode="IdRefType">
<xsl:apply-templates select="." mode="RefIdType" />
</xsl:template>
<xsl:template match="node()|@*" mode="VersionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VersionWithWildcardsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
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
<xsl:template match="node()|@*" mode="MedicationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Medication" mode="MedicationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MedicationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Dosage" mode="copy" />
<xsl:apply-templates select="Frequency" mode="copy" />
<xsl:apply-templates select="AdministrationInformation" mode="copy" />
<xsl:apply-templates select="Method" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WellbeingEventCategoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="WellbeingEventCategory" mode="WellbeingEventCategoryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WellbeingEventCategoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EventCategory" mode="copy" />
<xsl:apply-templates select="WellbeingEventSubCategoryList" mode="WellbeingEventSubCategoryListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WellbeingEventSubCategoryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="WellbeingEventSubCategory" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WellbeingEventLocationDetailsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EventLocation" mode="copy" />
<xsl:apply-templates select="Class" mode="copy" />
<xsl:apply-templates select="FurtherLocationNotes" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FollowUpActionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FollowUpAction" mode="FollowUpActionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FollowUpActionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="WellbeingResponseRefId" mode="copy" />
<xsl:apply-templates select="FollowUpDetails" mode="copy" />
<xsl:apply-templates select="FollowUpActionCategory" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PersonInvolvementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PersonInvolvement" mode="PersonInvolvementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PersonInvolvementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PersonRefId" mode="copy" />
<xsl:apply-templates select="ShortName" mode="copy" />
<xsl:apply-templates select="HowInvolved" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WithdrawalTimeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Withdrawal" mode="WithdrawalType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WithdrawalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="WithdrawalDate" mode="copy" />
<xsl:apply-templates select="WithdrawalStartTime" mode="copy" />
<xsl:apply-templates select="WithdrawalEndTime" mode="copy" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="copy" />
<xsl:apply-templates select="ScheduledActivityRefId" mode="copy" />
<xsl:apply-templates select="TimeTableCellRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SuspensionContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SuspensionCategory" mode="copy" />
<xsl:apply-templates select="WithdrawalTimeList" mode="WithdrawalTimeListType" />
<xsl:apply-templates select="Duration" mode="copy" />
<xsl:apply-templates select="AdvisementDate" mode="copy" />
<xsl:apply-templates select="ResolutionMeetingTime" mode="copy" />
<xsl:apply-templates select="ResolutionNotes" mode="copy" />
<xsl:apply-templates select="EarlyReturnDate" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DetentionContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DetentionCategory" mode="copy" />
<xsl:apply-templates select="DetentionDate" mode="copy" />
<xsl:apply-templates select="DetentionLocation" mode="copy" />
<xsl:apply-templates select="DetentionNotes" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PlanRequiredContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PlanRequiredList" mode="PlanRequiredListType" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PlanRequiredListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Plan" mode="WellbeingPlanType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WellbeingPlanType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanRefId" mode="copy" />
<xsl:apply-templates select="PlanNotes" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AwardContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AwardDate" mode="copy" />
<xsl:apply-templates select="AwardType" mode="copy" />
<xsl:apply-templates select="AwardDescription" mode="copy" />
<xsl:apply-templates select="AwardNotes" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherWellbeingResponseContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="OtherResponseDate" mode="copy" />
<xsl:apply-templates select="OtherResponseType" mode="copy" />
<xsl:apply-templates select="OtherResponseDescription" mode="copy" />
<xsl:apply-templates select="OtherResponseNotes" mode="copy" />
<xsl:apply-templates select="Status" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WellbeingDocumentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Document" mode="WellbeingDocumentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WellbeingDocumentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Location" mode="copy" />
<xsl:apply-templates select="Sensitivity" mode="copy" />
<xsl:apply-templates select="URL" mode="copy" />
<xsl:apply-templates select="DocumentType" mode="copy" />
<xsl:apply-templates select="DocumentReviewDate" mode="copy" />
<xsl:apply-templates select="DocumentDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestItemContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestItemLocalId" mode="copy" />
<xsl:apply-templates select="ItemName" mode="copy" />
<xsl:apply-templates select="ItemType" mode="copy" />
<xsl:apply-templates select="Subdomain" mode="copy" />
<xsl:apply-templates select="WritingGenre" mode="copy" />
<xsl:apply-templates select="ItemDescriptor" mode="copy" />
<xsl:apply-templates select="ReleasedStatus" mode="copy" />
<xsl:apply-templates select="MarkingType" mode="copy" />
<xsl:apply-templates select="MultipleChoiceOptionCount" mode="copy" />
<xsl:apply-templates select="CorrectAnswer" mode="copy" />
<xsl:apply-templates select="MaximumScore" mode="copy" />
<xsl:apply-templates select="ItemDifficulty" mode="copy" />
<xsl:apply-templates select="ItemDifficultyLogit5" mode="copy" />
<xsl:apply-templates select="ItemDifficultyLogit62" mode="copy" />
<xsl:apply-templates select="ItemDifficultyLogit5SE" mode="copy" />
<xsl:apply-templates select="ItemDifficultyLogit62SE" mode="copy" />
<xsl:apply-templates select="ItemProficiencyBand" mode="copy" />
<xsl:apply-templates select="ItemProficiencyLevel" mode="copy" />
<xsl:apply-templates select="ExemplarURL" mode="copy" />
<xsl:apply-templates select="ItemSubstitutedForList" mode="SubstituteItemListType" />
<xsl:apply-templates select="ContentDescriptionList" mode="ContentDescriptionListType" />
<xsl:apply-templates select="StimulusList" mode="StimulusListType" />
<xsl:apply-templates select="NAPWritingRubricList" mode="NAPWritingRubricListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestletContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestletLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TestletName" mode="copy" />
<xsl:apply-templates select="Node" mode="copy" />
<xsl:apply-templates select="LocationInStage" mode="copy" />
<xsl:apply-templates select="TestletMaximumScore" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestContentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TestName" mode="copy" />
<xsl:apply-templates select="TestLevel" mode="YearLevelType" />
<xsl:apply-templates select="TestType" mode="copy" />
<xsl:apply-templates select="Domain" mode="copy" />
<xsl:apply-templates select="TestYear" mode="SchoolYearType" />
<xsl:apply-templates select="StagesCount" mode="copy" />
<xsl:apply-templates select="DomainBands" mode="DomainBandsContainerType" />
<xsl:apply-templates select="DomainProficiency" mode="DomainProficiencyContainerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PlausibleScaledValueListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PlausibleScaledValue" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SubstituteItemListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubstituteItem" mode="SubstituteItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SubstituteItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubstituteItemRefId" mode="copy" />
<xsl:apply-templates select="SubstituteItemLocalId" mode="LocalIdType" />
<xsl:apply-templates select="PNPCodeList" mode="PNPCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CodeFrameTestItemListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestItem" mode="CodeFrameTestItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CodeFrameTestItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestItemRefId" mode="copy" />
<xsl:apply-templates select="SequenceNumber" mode="copy" />
<xsl:apply-templates select="TestItemContent" mode="NAPTestItemContentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StimulusLocalIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StimulusLocalId" mode="LocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DomainBandsContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Band1Lower" mode="copy" />
<xsl:apply-templates select="Band1Upper" mode="copy" />
<xsl:apply-templates select="Band2Lower" mode="copy" />
<xsl:apply-templates select="Band2Upper" mode="copy" />
<xsl:apply-templates select="Band3Lower" mode="copy" />
<xsl:apply-templates select="Band3Upper" mode="copy" />
<xsl:apply-templates select="Band4Lower" mode="copy" />
<xsl:apply-templates select="Band4Upper" mode="copy" />
<xsl:apply-templates select="Band5Lower" mode="copy" />
<xsl:apply-templates select="Band5Upper" mode="copy" />
<xsl:apply-templates select="Band6Lower" mode="copy" />
<xsl:apply-templates select="Band6Upper" mode="copy" />
<xsl:apply-templates select="Band7Lower" mode="copy" />
<xsl:apply-templates select="Band7Upper" mode="copy" />
<xsl:apply-templates select="Band8Lower" mode="copy" />
<xsl:apply-templates select="Band8Upper" mode="copy" />
<xsl:apply-templates select="Band9Lower" mode="copy" />
<xsl:apply-templates select="Band9Upper" mode="copy" />
<xsl:apply-templates select="Band10Lower" mode="copy" />
<xsl:apply-templates select="Band10Upper" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DomainProficiencyContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Level1Lower" mode="copy" />
<xsl:apply-templates select="Level1Upper" mode="copy" />
<xsl:apply-templates select="Level2Lower" mode="copy" />
<xsl:apply-templates select="Level2Upper" mode="copy" />
<xsl:apply-templates select="Level3Lower" mode="copy" />
<xsl:apply-templates select="Level3Upper" mode="copy" />
<xsl:apply-templates select="Level4Lower" mode="copy" />
<xsl:apply-templates select="Level4Upper" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestItemListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestItem" mode="NAPTestItem2Type" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestItem2Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestItemRefId" mode="copy" />
<xsl:apply-templates select="TestItemLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SequenceNumber" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPCodeFrameTestletListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Testlet" mode="NAPTestletCodeFrameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestletCodeFrameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestletRefId" mode="copy" />
<xsl:apply-templates select="TestletContent" mode="NAPTestletContentType" />
<xsl:apply-templates select="TestItemList" mode="CodeFrameTestItemListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPStudentResponseTestletListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Testlet" mode="NAPTestletResponseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestletResponseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestletRefId" mode="copy" />
<xsl:apply-templates select="NAPTestletLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TestletSubScore" mode="copy" />
<xsl:apply-templates select="ItemResponseList" mode="NAPTestletItemResponseListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestletItemResponseListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ItemResponse" mode="NAPTestletResponseItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPTestletResponseItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestItemRefId" mode="copy" />
<xsl:apply-templates select="NAPTestItemLocalId" mode="LocalIdType" />
<xsl:apply-templates select="Response" mode="copy" />
<xsl:apply-templates select="ResponseCorrectness" mode="copy" />
<xsl:apply-templates select="Score" mode="copy" />
<xsl:apply-templates select="LapsedTimeItem" mode="copy" />
<xsl:apply-templates select="SequenceNumber" mode="copy" />
<xsl:apply-templates select="ItemWeight" mode="copy" />
<xsl:apply-templates select="SubscoreList" mode="NAPSubscoreListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPSubscoreListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Subscore" mode="NAPSubscoreType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPSubscoreType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubscoreType" mode="copy" />
<xsl:apply-templates select="SubscoreValue" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DomainScoreType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RawScore" mode="copy" />
<xsl:apply-templates select="ScaledScoreValue" mode="copy" />
<xsl:apply-templates select="ScaledScoreLogitValue" mode="copy" />
<xsl:apply-templates select="ScaledScoreStandardError" mode="copy" />
<xsl:apply-templates select="ScaledScoreLogitStandardError" mode="copy" />
<xsl:apply-templates select="StudentDomainBand" mode="copy" />
<xsl:apply-templates select="StudentProficiency" mode="copy" />
<xsl:apply-templates select="PlausibleScaledValueList" mode="PlausibleScaledValueListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPWritingRubricListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPWritingRubric" mode="NAPWritingRubricType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPWritingRubricType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RubricType" mode="copy" />
<xsl:apply-templates select="ScoreList" mode="ScoreListType" />
<xsl:apply-templates select="Descriptor" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScoreListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Score" mode="ScoreType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScoreType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MaxScoreValue" mode="copy" />
<xsl:apply-templates select="ScoreDescriptionList" mode="ScoreDescriptionListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScoreDescriptionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ScoreDescription" mode="ScoreDescriptionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScoreDescriptionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ScoreValue" mode="copy" />
<xsl:apply-templates select="Descriptor" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StimulusListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Stimulus" mode="StimulusType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StimulusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StimulusLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TextGenre" mode="copy" />
<xsl:apply-templates select="TextType" mode="copy" />
<xsl:apply-templates select="WordCount" mode="copy" />
<xsl:apply-templates select="TextDescriptor" mode="copy" />
<xsl:apply-templates select="Content" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContentDescriptionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ContentDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PNPCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PNPCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AdjustmentContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PNPCodeList" mode="PNPCodeListType" />
<xsl:apply-templates select="BookletType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TestDisruptionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestDisruption" mode="TestDisruptionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TestDisruptionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Event" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CalendarSummaryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CalendarSummaryRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VisaSubClassType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="VisaSubClassCodeType" />
<xsl:apply-templates select="VisaExpiryDate" mode="copy" />
<xsl:apply-templates select="ATEExpiryDate" mode="copy" />
<xsl:apply-templates select="ATEStartDate" mode="copy" />
<xsl:apply-templates select="VisaStatisticalCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VisaSubClassListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="VisaSubClass" mode="VisaSubClassType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="VisaSubClassCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LanguageBaseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
<xsl:apply-templates select="LanguageType" mode="copy" />
<xsl:apply-templates select="Dialect" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReligiousEventListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReligiousEvent" mode="ReligiousEventType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReligiousEventType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReligionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DwellingArrangementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CountryListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CountryOfCitizenship" mode="CountryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CountryList2Type">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CountryOfResidency" mode="CountryType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DebitOrCreditAmountType">
<xsl:apply-templates select="." mode="MonetaryAmountType" />
</xsl:template>
<xsl:template match="node()|@*" mode="ScheduledActivityOverrideType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ActivityTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="Duration" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="FinishDate" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolCourseInfoOverrideType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CourseCode" mode="copy" />
<xsl:apply-templates select="StateCourseCode" mode="copy" />
<xsl:apply-templates select="DistrictCourseCode" mode="copy" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
<xsl:apply-templates select="CourseTitle" mode="copy" />
<xsl:apply-templates select="InstructionalLevel" mode="copy" />
<xsl:apply-templates select="CourseCredits" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocationOfInstructionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LanguageOfInstructionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MediumOfInstructionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentActivityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactFlagsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentLegalGuardian" mode="copy" />
<xsl:apply-templates select="PickupRights" mode="copy" />
<xsl:apply-templates select="LivesWith" mode="copy" />
<xsl:apply-templates select="AccessToRecords" mode="copy" />
<xsl:apply-templates select="ReceivesAssessmentReport" mode="copy" />
<xsl:apply-templates select="EmergencyContact" mode="copy" />
<xsl:apply-templates select="HasCustody" mode="copy" />
<xsl:apply-templates select="DisciplinaryContact" mode="copy" />
<xsl:apply-templates select="AttendanceContact" mode="copy" />
<xsl:apply-templates select="PrimaryCareProvider" mode="copy" />
<xsl:apply-templates select="FeesBilling" mode="copy" />
<xsl:apply-templates select="FeesAccess" mode="copy" />
<xsl:apply-templates select="FamilyMail" mode="copy" />
<xsl:apply-templates select="InterventionOrder" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AgencyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="YearRangeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Start" mode="YearLevelType" />
<xsl:apply-templates select="End" mode="YearLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CreationUserType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="UserId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AuditInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CreationUser" mode="CreationUserType" />
<xsl:apply-templates select="CreationDateTime" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CountsTowardAttendance" mode="copy" />
<xsl:apply-templates select="AttendanceValue" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CalendarDateInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramAvailabilityType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReferralSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PromotionInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PromotionStatus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CatchmentStatusContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentExitStatusContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentExitContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentEntryContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentMostRecentContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="HomeroomLocalId" mode="LocalIdType" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="FTE" mode="copy" />
<xsl:apply-templates select="Parent1Language" mode="copy" />
<xsl:apply-templates select="Parent2Language" mode="copy" />
<xsl:apply-templates select="Parent1EmploymentType" mode="copy" />
<xsl:apply-templates select="Parent2EmploymentType" mode="copy" />
<xsl:apply-templates select="Parent1SchoolEducationLevel" mode="copy" />
<xsl:apply-templates select="Parent2SchoolEducationLevel" mode="copy" />
<xsl:apply-templates select="Parent1NonSchoolEducation" mode="copy" />
<xsl:apply-templates select="Parent2NonSchoolEducation" mode="copy" />
<xsl:apply-templates select="LocalCampusId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolACARAId" mode="LocalIdType" />
<xsl:apply-templates select="TestLevel" mode="YearLevelType" />
<xsl:apply-templates select="Homegroup" mode="copy" />
<xsl:apply-templates select="ClassCode" mode="copy" />
<xsl:apply-templates select="MembershipType" mode="copy" />
<xsl:apply-templates select="FFPOS" mode="copy" />
<xsl:apply-templates select="ReportingSchoolId" mode="LocalIdType" />
<xsl:apply-templates select="OtherEnrollmentSchoolACARAId" mode="LocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffMostRecentContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolACARAId" mode="LocalIdType" />
<xsl:apply-templates select="LocalCampusId" mode="LocalIdType" />
<xsl:apply-templates select="NAPLANClassList" mode="NAPLANClassListType" />
<xsl:apply-templates select="HomeGroup" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffActivityExtensionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TotalEnrollmentsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Girls" mode="copy" />
<xsl:apply-templates select="Boys" mode="copy" />
<xsl:apply-templates select="TotalStudents" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CampusContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentSchoolId" mode="copy" />
<xsl:apply-templates select="SchoolCampusId" mode="copy" />
<xsl:apply-templates select="CampusType" mode="copy" />
<xsl:apply-templates select="AdminStatus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HouseholdContactInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="HouseholdContactInfo" mode="HouseholdContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HouseholdContactInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PreferenceNumber" mode="copy" />
<xsl:apply-templates select="HouseholdContactId" mode="LocalIdType" />
<xsl:apply-templates select="HouseholdSalutation" mode="copy" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatementCodesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatementCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Statement" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramFundingSourcesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ProgramFundingSource" mode="ProgramFundingSourceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramFundingSourceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceTimesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AttendanceTime" mode="AttendanceTimeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceTimeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AttendanceType" mode="copy" />
<xsl:apply-templates select="AttendanceCode" mode="AttendanceCodeType" />
<xsl:apply-templates select="AttendanceStatus" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="EndTime" mode="copy" />
<xsl:apply-templates select="DurationValue" mode="copy" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="RefIdType" />
<xsl:apply-templates select="AttendanceNote" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PeriodAttendancesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PeriodAttendance" mode="PeriodAttendanceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PeriodAttendanceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AttendanceType" mode="copy" />
<xsl:apply-templates select="AttendanceCode" mode="AttendanceCodeType" />
<xsl:apply-templates select="AttendanceStatus" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="SessionInfoRefId" mode="copy" />
<xsl:apply-templates select="ScheduledActivityRefId" mode="copy" />
<xsl:apply-templates select="TimetablePeriod" mode="copy" />
<xsl:apply-templates select="DayId" mode="LocalIdType" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="EndTime" mode="copy" />
<xsl:apply-templates select="TimeIn" mode="copy" />
<xsl:apply-templates select="TimeOut" mode="copy" />
<xsl:apply-templates select="TimeTableCellRefId" mode="copy" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="RefIdType" />
<xsl:apply-templates select="TeacherList" mode="ScheduledTeacherListType" />
<xsl:apply-templates select="RoomList" mode="RoomListType" />
<xsl:apply-templates select="AttendanceNote" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffSubjectListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffSubject" mode="StaffSubjectType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffSubjectType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PreferenceNumber" mode="copy" />
<xsl:apply-templates select="SubjectLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="RefIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingGroupListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeachingGroupRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ScheduledTeacherListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeacherCover" mode="TeacherCoverType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeacherCoverType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="StaffLocalId" mode="LocalIdType" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="FinishTime" mode="copy" />
<xsl:apply-templates select="Credit" mode="copy" />
<xsl:apply-templates select="Supervision" mode="copy" />
<xsl:apply-templates select="Weighting" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RoomListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoomInfoRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AlternateIdentificationCodes">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlternateIdentificationCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AuthorsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Author" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OrganizationsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Organization" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PurchasingItemsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PurchasingItem" mode="PurchasingItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PurchasingItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ItemNumber" mode="copy" />
<xsl:apply-templates select="ItemDescription" mode="copy" />
<xsl:apply-templates select="Quantity" mode="copy" />
<xsl:apply-templates select="UnitCost" mode="MonetaryAmountType" />
<xsl:apply-templates select="TotalCost" mode="MonetaryAmountType" />
<xsl:apply-templates select="QuantityDelivered" mode="copy" />
<xsl:apply-templates select="CancelledOrder" mode="copy" />
<xsl:apply-templates select="TaxRate" mode="copy" />
<xsl:apply-templates select="ExpenseAccounts" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExpenseAccountType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AccountCode" mode="copy" />
<xsl:apply-templates select="Amount" mode="MonetaryAmountType" />
<xsl:apply-templates select="FinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="AccountingPeriod" mode="LocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolProgramListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Program" mode="SchoolProgramType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolProgramType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Category" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningObjectivesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningObjective" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RecognitionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Recognition" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LResourcesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningResourceRefId" mode="ResourcesType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourcesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SourceObjectsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SourceObject" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PrerequisitesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Prerequisite" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EssentialMaterialsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EssentialMaterial" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TechnicalRequirementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TechnicalRequirement" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SoftwareRequirementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SoftwareRequirement" mode="SoftwareRequirementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SoftwareRequirementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SoftwareTitle" mode="copy" />
<xsl:apply-templates select="Version" mode="copy" />
<xsl:apply-templates select="Vendor" mode="copy" />
<xsl:apply-templates select="OS" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HouseholdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Household" mode="LocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSubjectChoiceListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentSubjectChoice" mode="StudentSubjectChoiceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentSubjectChoiceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PreferenceNumber" mode="copy" />
<xsl:apply-templates select="SubjectLocalId" mode="LocalIdType" />
<xsl:apply-templates select="StudyDescription" mode="SubjectAreaType" />
<xsl:apply-templates select="OtherSchoolLocalId" mode="LocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="IdentityAssertionsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="IdentityAssertion" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningResourcesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningResourceRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardsDocumentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardDocumentRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ComponentsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Component" mode="ComponentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ComponentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Reference" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Strategies" mode="StrategiesType" />
<xsl:apply-templates select="AssociatedObjects" mode="AssociatedObjectsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StrategiesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Strategy" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssociatedObjectsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AssociatedObject" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EvaluationsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Evaluation" mode="EvaluationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EvaluationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApprovalsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Approval" mode="ApprovalType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApprovalType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Organization" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MediaTypesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MediaType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEAContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LEAContact" mode="LEAContactType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LEAContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PublishInDirectory" mode="PublishInDirectoryType" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FinancialAccountRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FinancialAccountRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PasswordListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Password" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExclusionRulesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ExclusionRule" mode="ExclusionRuleType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExclusionRuleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CharacteristicsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AggregateCharacteristicInfoRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Contact" mode="ContactType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="Address" mode="AddressType" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
<xsl:apply-templates select="Email" mode="EmailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingGroupPeriodListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeachingGroupPeriod" mode="TeachingGroupPeriodType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingGroupPeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeTableCellRefId" mode="copy" />
<xsl:apply-templates select="RoomNumber" mode="HomeroomNumberType" />
<xsl:apply-templates select="StaffLocalId" mode="LocalIdType" />
<xsl:apply-templates select="DayId" mode="LocalIdType" />
<xsl:apply-templates select="PeriodId" mode="LocalIdType" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="CellType" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeacherListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeachingGroupTeacher" mode="TeachingGroupTeacherType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingGroupTeacherType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="StaffLocalId" mode="LocalIdType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="Association" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeachingGroupStudent" mode="TeachingGroupStudentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingGroupStudentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="StudentLocalId" mode="LocalIdType" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeTableDayListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeTableDay" mode="TimeTableDayType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeTableDayType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DayId" mode="LocalIdType" />
<xsl:apply-templates select="DayTitle" mode="copy" />
<xsl:apply-templates select="TimeTablePeriodList" mode="TimeTablePeriodListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeTablePeriodListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeTablePeriod" mode="TimeTablePeriodType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeTablePeriodType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PeriodId" mode="LocalIdType" />
<xsl:apply-templates select="PeriodTitle" mode="copy" />
<xsl:apply-templates select="BellPeriod" mode="copy" />
<xsl:apply-templates select="StartTime" mode="copy" />
<xsl:apply-templates select="EndTime" mode="copy" />
<xsl:apply-templates select="RegularSchoolPeriod" mode="copy" />
<xsl:apply-templates select="InstructionalMinutes" mode="copy" />
<xsl:apply-templates select="UseInAttendanceCalculations" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NAPLANClassListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ClassCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolGroupListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolGroup" mode="LocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="YearLevelEnrollmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="YearLevelEnrollment" mode="YearLevelEnrollmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="YearLevelEnrollmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Year" mode="copy" />
<xsl:apply-templates select="Enrollment" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolFocusListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolFocus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AlertMessagesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlertMessage" mode="AlertMessageType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AlertMessageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MedicalAlertMessagesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="MedicalAlertMessage" mode="MedicalAlertMessageType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MedicalAlertMessageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="OtherId" mode="OtherIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BaseNameType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="FamilyName" mode="copy" />
<xsl:apply-templates select="GivenName" mode="copy" />
<xsl:apply-templates select="MiddleName" mode="copy" />
<xsl:apply-templates select="FamilyNameFirst" mode="copy" />
<xsl:apply-templates select="PreferredFamilyName" mode="copy" />
<xsl:apply-templates select="PreferredFamilyNameFirst" mode="copy" />
<xsl:apply-templates select="PreferredGivenName" mode="copy" />
<xsl:apply-templates select="Suffix" mode="copy" />
<xsl:apply-templates select="FullName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NameOfRecordType">
<xsl:apply-templates select="." mode="BaseNameType" />
</xsl:template>
<xsl:template match="node()|@*" mode="OtherNameType">
<xsl:apply-templates select="." mode="BaseNameType" />
</xsl:template>
<xsl:template match="node()|@*" mode="PartialDateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocalIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocationName" mode="copy" />
<xsl:apply-templates select="LocationRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StateProvinceIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AttendanceCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="YearLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PersonInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameOfRecordType" />
<xsl:apply-templates select="OtherNames" mode="OtherNamesType" />
<xsl:apply-templates select="Demographics" mode="DemographicsType" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="HouseholdContactInfoList" mode="HouseholdContactInfoListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="YearLevelsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolURLType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PrincipalInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ContactName" mode="NameOfRecordType" />
<xsl:apply-templates select="ContactTitle" mode="copy" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolContactType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PublishInDirectory" mode="PublishInDirectoryType" />
<xsl:apply-templates select="ContactInfo" mode="ContactInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolContactListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolContact" mode="SchoolContactType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PublishInDirectoryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ContactInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="PositionTitle" mode="copy" />
<xsl:apply-templates select="Role" mode="copy" />
<xsl:apply-templates select="Address" mode="AddressType" />
<xsl:apply-templates select="EmailList" mode="EmailListType" />
<xsl:apply-templates select="PhoneNumberList" mode="PhoneNumberListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressStreetType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Line1" mode="copy" />
<xsl:apply-templates select="Line2" mode="copy" />
<xsl:apply-templates select="Line3" mode="copy" />
<xsl:apply-templates select="Complex" mode="copy" />
<xsl:apply-templates select="StreetNumber" mode="copy" />
<xsl:apply-templates select="StreetPrefix" mode="copy" />
<xsl:apply-templates select="StreetName" mode="copy" />
<xsl:apply-templates select="StreetType" mode="copy" />
<xsl:apply-templates select="StreetSuffix" mode="copy" />
<xsl:apply-templates select="ApartmentType" mode="copy" />
<xsl:apply-templates select="ApartmentNumberPrefix" mode="copy" />
<xsl:apply-templates select="ApartmentNumber" mode="copy" />
<xsl:apply-templates select="ApartmentNumberSuffix" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EffectiveFromDate" mode="copy" />
<xsl:apply-templates select="EffectiveToDate" mode="copy" />
<xsl:apply-templates select="Street" mode="AddressStreetType" />
<xsl:apply-templates select="City" mode="copy" />
<xsl:apply-templates select="StateProvince" mode="StateProvinceType" />
<xsl:apply-templates select="Country" mode="CountryType" />
<xsl:apply-templates select="PostalCode" mode="copy" />
<xsl:apply-templates select="GridLocation" mode="GridLocationType" />
<xsl:apply-templates select="MapReference" mode="MapReferenceType" />
<xsl:apply-templates select="RadioContact" mode="copy" />
<xsl:apply-templates select="Community" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="AddressGlobalUID" mode="GUIDType" />
<xsl:apply-templates select="StatisticalAreas" mode="StatisticalAreasType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MapReferenceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XCoordinate" mode="copy" />
<xsl:apply-templates select="YCoordinate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatisticalAreasType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatisticalArea" mode="StatisticalAreaType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatisticalAreaType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Address" mode="AddressType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmailListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Email" mode="EmailType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EmailType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PhoneNumberListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PhoneNumberType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="Extension" mode="copy" />
<xsl:apply-templates select="ListedStatus" mode="copy" />
<xsl:apply-templates select="Preference" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CountryType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GridLocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Latitude" mode="copy" />
<xsl:apply-templates select="Longitude" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OperationalStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StateProvinceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ElectronicIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ElectronicId" mode="ElectronicIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ElectronicIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherNamesType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="OtherNameType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DemographicsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="IndigenousStatus" mode="copy" />
<xsl:apply-templates select="Sex" mode="copy" />
<xsl:apply-templates select="BirthDate" mode="BirthDateType" />
<xsl:apply-templates select="DateOfDeath" mode="copy" />
<xsl:apply-templates select="BirthDateVerification" mode="copy" />
<xsl:apply-templates select="PlaceOfBirth" mode="copy" />
<xsl:apply-templates select="StateOfBirth" mode="StateProvinceType" />
<xsl:apply-templates select="CountryOfBirth" mode="CountryType" />
<xsl:apply-templates select="CountriesOfCitizenship" mode="CountryListType" />
<xsl:apply-templates select="CountriesOfResidency" mode="CountryList2Type" />
<xsl:apply-templates select="CountryArrivalDate" mode="copy" />
<xsl:apply-templates select="AustralianCitizenshipStatus" mode="copy" />
<xsl:apply-templates select="EnglishProficiency" mode="EnglishProficiencyType" />
<xsl:apply-templates select="LanguageList" mode="LanguageListType" />
<xsl:apply-templates select="DwellingArrangement" mode="DwellingArrangementType" />
<xsl:apply-templates select="Religion" mode="ReligionType" />
<xsl:apply-templates select="ReligiousEventList" mode="ReligiousEventListType" />
<xsl:apply-templates select="ReligiousRegion" mode="copy" />
<xsl:apply-templates select="PermanentResident" mode="copy" />
<xsl:apply-templates select="VisaSubClass" mode="VisaSubClassCodeType" />
<xsl:apply-templates select="VisaStatisticalCode" mode="copy" />
<xsl:apply-templates select="VisaExpiryDate" mode="copy" />
<xsl:apply-templates select="VisaSubClassList" mode="VisaSubClassListType" />
<xsl:apply-templates select="LBOTE" mode="copy" />
<xsl:apply-templates select="ImmunisationCertificateStatus" mode="copy" />
<xsl:apply-templates select="CulturalBackground" mode="copy" />
<xsl:apply-templates select="MaritalStatus" mode="copy" />
<xsl:apply-templates select="MedicareNumber" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EnglishProficiencyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LanguageListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Language" mode="LanguageBaseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BirthDateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProjectedGraduationYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OnTimeGraduationYearType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RelationshipType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EducationalLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GraduationDateType">
<xsl:apply-templates select="." mode="PartialDateType" />
</xsl:template>
<xsl:template match="node()|@*" mode="NameType">
<xsl:apply-templates select="." mode="BaseNameType" />
</xsl:template>
<xsl:template match="node()|@*" mode="HomeroomNumberType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeElementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="StartDateTime" mode="copy" />
<xsl:apply-templates select="EndDateTime" mode="copy" />
<xsl:apply-templates select="SpanGaps" mode="TimeElementType__SpanGaps" />
<xsl:apply-templates select="IsCurrent" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeElementType__SpanGaps">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SpanGap" mode="TimeElementType__SpanGaps__SpanGap" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeElementType__SpanGaps__SpanGap">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Value" mode="copy" />
<xsl:apply-templates select="StartDateTime" mode="copy" />
<xsl:apply-templates select="EndDateTime" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Created" mode="LifeCycleType__Created" />
<xsl:apply-templates select="ModificationHistory" mode="LifeCycleType__ModificationHistory" />
<xsl:apply-templates select="TimeElements" mode="LifeCycleType__TimeElements" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType__Created">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DateTime" mode="copy" />
<xsl:apply-templates select="Creators" mode="LifeCycleType__Created__Creators" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType__Created__Creators">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Creator" mode="LifeCycleType__Created__Creators__Creator" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType__Created__Creators__Creator">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="ID" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType__ModificationHistory">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Modified" mode="LifeCycleType__ModificationHistory__Modified" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType__ModificationHistory__Modified">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="By" mode="copy" />
<xsl:apply-templates select="DateTime" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleType__TimeElements">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeElement" mode="TimeElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="OtherCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="OtherCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ProgramStatusType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SubjectAreaListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ACStrandAreaListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ACStrandSubjectArea" mode="ACStrandSubjectAreaType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SubjectAreaType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="OtherCodeList" mode="OtherCodeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ACStrandSubjectAreaType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ACStrand" mode="copy" />
<xsl:apply-templates select="SubjectArea" mode="SubjectAreaType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EducationFilterType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItems" mode="LearningStandardsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SIF_ExtendedElementsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_ExtendedElement" mode="ExtendedContentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SIF_MetadataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeElements" mode="SIF_MetadataType__TimeElements" />
<xsl:apply-templates select="LifeCycle" mode="LifeCycleType" />
<xsl:apply-templates select="EducationFilter" mode="EducationFilterType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SIF_MetadataType__TimeElements">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeElement" mode="TimeElementType" />
</xsl:copy>
</xsl:template>
</xsl:stylesheet>
