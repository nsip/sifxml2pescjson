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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="GradingAssignment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeachingGroupRefId" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefIdList" mode="StudentsType" />
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
<xsl:apply-templates select="AssessmentType" mode="copy" />
<xsl:apply-templates select="LevelAssessed" mode="copy" />
<xsl:apply-templates select="AssignmentPurpose" mode="copy" />
<xsl:apply-templates select="SubAssignmentList" mode="AssignmentListType" />
<xsl:apply-templates select="RubricScoringGuide" mode="GenericRubricType" />
<xsl:apply-templates select="PrerequisiteList" mode="PrerequisitesType" />
<xsl:apply-templates select="LearningStandardList" mode="LearningStandardListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="DateGraded" mode="copy" />
<xsl:apply-templates select="ExpectedScore" mode="copy" />
<xsl:apply-templates select="ScorePoints" mode="copy" />
<xsl:apply-templates select="ScorePercent" mode="copy" />
<xsl:apply-templates select="ScoreLetter" mode="copy" />
<xsl:apply-templates select="ScoreDescription" mode="copy" />
<xsl:apply-templates select="SubscoreList" mode="NAPSubscoreListType" />
<xsl:apply-templates select="TeacherJudgement" mode="copy" />
<xsl:apply-templates select="MarkInfoRefId" mode="copy" />
<xsl:apply-templates select="AssignmentScoreIteration" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningResourcePackage" mode="object">
<xsl:apply-templates select="." mode="AbstractContentElementType" />
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
<xsl:apply-templates select="Copyright" mode="CopyRightContainerType" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="RepositoryDate" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
<xsl:apply-templates select="RelatedLearningStandards" mode="LearningStandardsDocumentType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LearningStandardItem" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Resources" mode="LResourcesType" />
<xsl:apply-templates select="StandardSettingBody" mode="StandardsSettingBodyType" />
<xsl:apply-templates select="StandardHierarchyLevel" mode="StandardHierarchyLevelType" />
<xsl:apply-templates select="PredecessorItems" mode="LearningStandardsType" />
<xsl:apply-templates select="StatementCodes" mode="StatementCodesType" />
<xsl:apply-templates select="Statements" mode="StatementsType" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="ACStrandSubjectArea" mode="ACStrandSubjectAreaType" />
<xsl:apply-templates select="StandardIdentifier" mode="StandardIdentifierType" />
<xsl:apply-templates select="LearningStandardDocumentRefId" mode="copy" />
<xsl:apply-templates select="RelatedLearningStandardItems" mode="RelatedLearningStandardItemRefIdListType" />
<xsl:apply-templates select="Level4" mode="copy" />
<xsl:apply-templates select="Level5" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="MarkValueInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="PercentageMinimum" mode="copy" />
<xsl:apply-templates select="PercentageMaximum" mode="copy" />
<xsl:apply-templates select="PercentagePassingGrade" mode="copy" />
<xsl:apply-templates select="NumericPrecision" mode="copy" />
<xsl:apply-templates select="NumericScale" mode="copy" />
<xsl:apply-templates select="NumericLow" mode="copy" />
<xsl:apply-templates select="NumericHigh" mode="copy" />
<xsl:apply-templates select="NumericPassingGrade" mode="copy" />
<xsl:apply-templates select="ValidLetterMarkList" mode="ValidLetterMarkListType" />
<xsl:apply-templates select="Narrative" mode="copy" />
<xsl:apply-templates select="NarrativeMaximumSize" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PersonPicture" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentObjectRefId" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="PictureSource" mode="URIOrBinaryType" />
<xsl:apply-templates select="OKToPublish" mode="copy" />
<xsl:apply-templates select="PublishingPermissionList" mode="PublishingPermissionListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PersonPrivacyObligationDocument" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentRefId" mode="copy" />
<xsl:apply-templates select="ParentObjectTypeName" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="SettingLocationList" mode="SettingLocationListType" />
<xsl:apply-templates select="ContactForRequestsRefId" mode="copy" />
<xsl:apply-templates select="ContactForRequestsObjectTypeName" mode="copy" />
<xsl:apply-templates select="ConsentToSharingOfData" mode="ConsentToSharingOfDataContainerType" />
<xsl:apply-templates select="PermissionToParticipateList" mode="PermissionToParticipateListType" />
<xsl:apply-templates select="ApplicableLawList" mode="ApplicableLawListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PersonalisedPlan" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanCategory" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanStartDate" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanEndDate" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanReviewDate" mode="copy" />
<xsl:apply-templates select="PersonalisedPlanNotes" mode="copy" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="AssociatedAttachment" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="ResourceUsage" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="ResourceUsageContentType" mode="ResourceUsageContentTypeType" />
<xsl:apply-templates select="ResourceReportColumnList" mode="ResourceReportColumnListType" />
<xsl:apply-templates select="ResourceReportLineList" mode="ResourceReportLineListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
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
<xsl:apply-templates select="AvailableForTimetable" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="ParentCommonwealthId" mode="copy" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="TermInfoRefId" mode="copy" />
<xsl:apply-templates select="MediumOfInstruction" mode="MediumOfInstructionType" />
<xsl:apply-templates select="LanguageOfInstruction" mode="LanguageOfInstructionType" />
<xsl:apply-templates select="LocationOfInstruction" mode="LocationOfInstructionType" />
<xsl:apply-templates select="SummerSchool" mode="copy" />
<xsl:apply-templates select="SchoolCourseInfoOverride" mode="SchoolCourseInfoOverrideType" />
<xsl:apply-templates select="CourseSectionCode" mode="copy" />
<xsl:apply-templates select="SectionCode" mode="copy" />
<xsl:apply-templates select="CountForAttendance" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="PreviousSchoolName" mode="copy" />
<xsl:apply-templates select="AvailableForTimetable" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="Employment" mode="copy" />
<xsl:apply-templates select="Workplace" mode="copy" />
<xsl:apply-templates select="WorkingWithChildrenCheck" mode="WorkingWithChildrenCheckType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="HouseholdList" mode="HouseholdListType" />
<xsl:apply-templates select="ContactFlags" mode="ContactFlagsType" />
<xsl:apply-templates select="MainlySpeaksEnglishAtHome" mode="copy" />
<xsl:apply-templates select="ContactSequence" mode="copy" />
<xsl:apply-templates select="ContactSequenceSource" mode="copy" />
<xsl:apply-templates select="ContactMethod" mode="copy" />
<xsl:apply-templates select="FeePercentage" mode="StudentContactFeePercentageType" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentGrade" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="Homegroup" mode="copy" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="TeachingGroupShortName" mode="copy" />
<xsl:apply-templates select="TeachingGroupRefId" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="Markers" mode="StudentGradeMarkersListType" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="TermInfoRefId" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="LearningArea" mode="ACStrandSubjectAreaType" />
<xsl:apply-templates select="LearningStandardList" mode="LearningStandardListType" />
<xsl:apply-templates select="GradingScoreList" mode="GradingScoreListType" />
<xsl:apply-templates select="Grade" mode="GradeType" />
<xsl:apply-templates select="TeacherJudgement" mode="copy" />
<xsl:apply-templates select="TermSpan" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentPersonal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlertMessages" mode="AlertMessagesType" />
<xsl:apply-templates select="MedicalAlertMessages" mode="MedicalAlertMessagesType" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="NationalUniqueStudentIdentifier" mode="copy" />
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
<xsl:apply-templates select="IndependentStudent" mode="copy" />
<xsl:apply-templates select="Sensitive" mode="copy" />
<xsl:apply-templates select="OfflineDelivery" mode="copy" />
<xsl:apply-templates select="ESLSupport" mode="copy" />
<xsl:apply-templates select="PrePrimaryEducation" mode="copy" />
<xsl:apply-templates select="PrePrimaryEducationHours" mode="copy" />
<xsl:apply-templates select="FirstAUSchoolEnrollment" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentSchoolEnrollment" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="MembershipType" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="TimeFrame" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="IntendedEntryDate" mode="copy" />
<xsl:apply-templates select="EntryDate" mode="copy" />
<xsl:apply-templates select="EntryType" mode="StudentEntryContainerType" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="Homeroom" mode="HomeroomType" />
<xsl:apply-templates select="Advisor" mode="StaffRefIdType" />
<xsl:apply-templates select="Counselor" mode="StaffRefIdType" />
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
<xsl:apply-templates select="PreviousSchoolName" mode="copy" />
<xsl:apply-templates select="DestinationSchool" mode="LocalIdType" />
<xsl:apply-templates select="DestinationSchoolName" mode="copy" />
<xsl:apply-templates select="StudentSubjectChoiceList" mode="StudentSubjectChoiceListType" />
<xsl:apply-templates select="StartedAtSchoolDate" mode="copy" />
<xsl:apply-templates select="StudentGroupList" mode="StudentGroupListType" />
<xsl:apply-templates select="PublishingPermissionList" mode="PublishingPermissionListType" />
<xsl:apply-templates select="DisabilityLevelOfAdjustment" mode="copy" />
<xsl:apply-templates select="DisabilityCategory" mode="copy" />
<xsl:apply-templates select="CensusAge" mode="copy" />
<xsl:apply-templates select="DistanceEducationStudent" mode="copy" />
<xsl:apply-templates select="BoardingStatus" mode="copy" />
<xsl:apply-templates select="InternationalStudent" mode="copy" />
<xsl:apply-templates select="TravelDetails" mode="TravelDetailsContainerType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentScoreJudgementAgainstStandard" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolYear" mode="SchoolYearType" />
<xsl:apply-templates select="TermInfoRefId" mode="copy" />
<xsl:apply-templates select="LocalTermCode" mode="LocalIdType" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="StudentStateProvinceId" mode="StateProvinceIdType" />
<xsl:apply-templates select="StudentLocalId" mode="LocalIdType" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="TeachingGroupRefId" mode="copy" />
<xsl:apply-templates select="ClassLocalId" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="StaffLocalId" mode="LocalIdType" />
<xsl:apply-templates select="LearningStandardList" mode="LearningStandardListType" />
<xsl:apply-templates select="CurriculumCode" mode="LocalIdType" />
<xsl:apply-templates select="CurriculumNodeCode" mode="LocalIdType" />
<xsl:apply-templates select="Score" mode="copy" />
<xsl:apply-templates select="SpecialCircumstanceLocalCode" mode="LocalIdType" />
<xsl:apply-templates select="ManagedPathwayLocalCode" mode="LocalIdType" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolLocalId" mode="LocalIdType" />
<xsl:apply-templates select="SchoolCommonwealthId" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="SystemRole" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="SystemRoleObjectRefIdType" />
<xsl:apply-templates select="SystemContextList" mode="SystemContextListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
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
<xsl:apply-templates select="KeyLearningArea" mode="copy" />
<xsl:apply-templates select="Semester" mode="copy" />
<xsl:apply-templates select="StudentList" mode="StudentListType" />
<xsl:apply-templates select="TeacherList" mode="TeacherListType" />
<xsl:apply-templates select="MinClassSize" mode="copy" />
<xsl:apply-templates select="MaxClassSize" mode="copy" />
<xsl:apply-templates select="TeachingGroupPeriodList" mode="TeachingGroupPeriodListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="TimeTableContainer" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeTableSchedule" mode="TimeTableScheduleType" />
<xsl:apply-templates select="TimeTableScheduleCellList" mode="TimeTableScheduleCellListType" />
<xsl:apply-templates select="TeachingGroupScheduleList" mode="TeachingGroupScheduleType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingAlert" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingAppeal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="WellbeingResponseRefId" mode="copy" />
<xsl:apply-templates select="LocalAppealId" mode="LocalIdType" />
<xsl:apply-templates select="AppealStatusCode" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="AppealNotes" mode="copy" />
<xsl:apply-templates select="AppealOutcome" mode="copy" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingCharacteristic" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicClassification" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicStartDate" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicEndDate" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicReviewDate" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicNotes" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicCategory" mode="copy" />
<xsl:apply-templates select="WellbeingCharacteristicSubCategory" mode="copy" />
<xsl:apply-templates select="LocalCharacteristicCode" mode="LocalIdType" />
<xsl:apply-templates select="CharacteristicSeverity" mode="copy" />
<xsl:apply-templates select="SymptomList" mode="SymptomListType" />
<xsl:apply-templates select="DailyManagement" mode="copy" />
<xsl:apply-templates select="EmergencyManagement" mode="copy" />
<xsl:apply-templates select="PreferredHospital" mode="copy" />
<xsl:apply-templates select="EmergencyResponsePlan" mode="copy" />
<xsl:apply-templates select="Trigger" mode="copy" />
<xsl:apply-templates select="ConfidentialFlag" mode="copy" />
<xsl:apply-templates select="Alert" mode="copy" />
<xsl:apply-templates select="MedicationList" mode="MedicationListType" />
<xsl:apply-templates select="DocumentList" mode="WellbeingDocumentListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingEvent" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="GroupIndicator" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="EventId" mode="LocalIdType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingPersonLink" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="WellbeingEventRefId" mode="copy" />
<xsl:apply-templates select="WellbeingResponseRefId" mode="copy" />
<xsl:apply-templates select="GroupId" mode="LocalIdType" />
<xsl:apply-templates select="PersonRefId" mode="copy" />
<xsl:apply-templates select="ShortName" mode="copy" />
<xsl:apply-templates select="HowInvolved" mode="copy" />
<xsl:apply-templates select="OtherPersonId" mode="LocalIdType" />
<xsl:apply-templates select="OtherPersonContactDetails" mode="copy" />
<xsl:apply-templates select="PersonRole" mode="copy" />
<xsl:apply-templates select="FollowUpActionList" mode="FollowUpActionListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="WellbeingResponse" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="AddressCollection" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AddressCollectionYear" mode="SchoolYearType" />
<xsl:apply-templates select="RoundCode" mode="copy" />
<xsl:apply-templates select="SoftwareVendorInfo" mode="SoftwareVendorInfoContainerType" />
<xsl:apply-templates select="AddressCollectionReportingList" mode="AddressCollectionReportingListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CensusCollection" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CensusYear" mode="SchoolYearType" />
<xsl:apply-templates select="RoundCode" mode="copy" />
<xsl:apply-templates select="SoftwareVendorInfo" mode="SoftwareVendorInfoContainerType" />
<xsl:apply-templates select="CensusReportingList" mode="CensusReportingListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CollectionRound" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AGCollection" mode="copy" />
<xsl:apply-templates select="CollectionYear" mode="SchoolYearType" />
<xsl:apply-templates select="AGRoundList" mode="AGRoundListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="CollectionStatus" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ReportingAuthority" mode="copy" />
<xsl:apply-templates select="ReportingAuthoritySystem" mode="copy" />
<xsl:apply-templates select="ReportingAuthorityCommonwealthId" mode="copy" />
<xsl:apply-templates select="SubmittedBy" mode="copy" />
<xsl:apply-templates select="SubmissionTimestamp" mode="copy" />
<xsl:apply-templates select="AGCollection" mode="copy" />
<xsl:apply-templates select="CollectionYear" mode="SchoolYearType" />
<xsl:apply-templates select="RoundCode" mode="copy" />
<xsl:apply-templates select="AGReportingObjectResponseList" mode="AGReportingObjectResponseListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Debtor" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="BilledEntity" mode="copy" />
<xsl:apply-templates select="AddressList" mode="AddressListType" />
<xsl:apply-templates select="BillingName" mode="copy" />
<xsl:apply-templates select="BillingNote" mode="copy" />
<xsl:apply-templates select="Discount" mode="copy" />
<xsl:apply-templates select="BSB" mode="copy" />
<xsl:apply-templates select="AccountNumber" mode="copy" />
<xsl:apply-templates select="AccountName" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialAccount" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="ParentAccountRefId" mode="copy" />
<xsl:apply-templates select="ChargedLocationInfoRefId" mode="copy" />
<xsl:apply-templates select="AccountNumber" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="ClassType" mode="copy" />
<xsl:apply-templates select="AccountCode" mode="copy" />
<xsl:apply-templates select="CreationDate" mode="copy" />
<xsl:apply-templates select="CreationTime" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="FinancialQuestionnaireCollection" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FQYear" mode="SchoolYearType" />
<xsl:apply-templates select="RoundCode" mode="copy" />
<xsl:apply-templates select="SoftwareVendorInfo" mode="SoftwareVendorInfoContainerType" />
<xsl:apply-templates select="FQReportingList" mode="FQReportingListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Invoice" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
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
<xsl:apply-templates select="AccountCodeList" mode="AccountCodeListType" />
<xsl:apply-templates select="AccountingPeriod" mode="LocalIdType" />
<xsl:apply-templates select="RelatedPurchaseOrderRefId" mode="copy" />
<xsl:apply-templates select="PurchasingItems" mode="PurchasingItemsType" />
<xsl:apply-templates select="Voluntary" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="Journal" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="DebitFinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="CreditFinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="DebitAccountCode" mode="copy" />
<xsl:apply-templates select="CreditAccountCode" mode="copy" />
<xsl:apply-templates select="OriginatingTransactionRefId" mode="copy" />
<xsl:apply-templates select="Amount" mode="MonetaryAmountType" />
<xsl:apply-templates select="GSTCodeOriginal" mode="copy" />
<xsl:apply-templates select="GSTCodeReplacement" mode="copy" />
<xsl:apply-templates select="Note" mode="copy" />
<xsl:apply-templates select="JournalAdjustmentList" mode="JournalAdjustmentListType" />
<xsl:apply-templates select="CreatedDate" mode="copy" />
<xsl:apply-templates select="ApprovedDate" mode="copy" />
<xsl:apply-templates select="CreatedBy" mode="copy" />
<xsl:apply-templates select="ApprovedBy" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="LibraryPatronStatus" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LibraryType" mode="copy" />
<xsl:apply-templates select="PatronRefId" mode="copy" />
<xsl:apply-templates select="PatronLocalId" mode="LocalIdType" />
<xsl:apply-templates select="PatronRefObject" mode="copy" />
<xsl:apply-templates select="PatronName" mode="NameOfRecordType" />
<xsl:apply-templates select="ElectronicIdList" mode="ElectronicIdListType" />
<xsl:apply-templates select="TransactionList" mode="LibraryTransactionListType" />
<xsl:apply-templates select="MessageList" mode="LibraryMessageListType" />
<xsl:apply-templates select="NumberOfCheckouts" mode="copy" />
<xsl:apply-templates select="NumberOfHoldItems" mode="copy" />
<xsl:apply-templates select="NumberOfOverdues" mode="copy" />
<xsl:apply-templates select="NumberOfFines" mode="copy" />
<xsl:apply-templates select="FineAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="NumberOfRefunds" mode="copy" />
<xsl:apply-templates select="RefundAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPEventStudentLink" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentPersonalRefId" mode="copy" />
<xsl:apply-templates select="PlatformStudentIdentifier" mode="LocalIdType" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolACARAId" mode="LocalIdType" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="LocalIdType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
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
<xsl:apply-templates select="PlatformStudentIdentifier" mode="LocalIdType" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="LocalIdType" />
<xsl:apply-templates select="DomainScore" mode="DomainScoreType" />
<xsl:apply-templates select="TestletList" mode="NAPStudentResponseTestletListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTest" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestContent" mode="NAPTestContentType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTestItem" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TestItemContent" mode="NAPTestItemContentType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTestScoreSummary" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SchoolInfoRefId" mode="copy" />
<xsl:apply-templates select="SchoolACARAId" mode="LocalIdType" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="LocalIdType" />
<xsl:apply-templates select="DomainNationalAverage" mode="copy" />
<xsl:apply-templates select="DomainSchoolAverage" mode="copy" />
<xsl:apply-templates select="DomainJurisdictionAverage" mode="copy" />
<xsl:apply-templates select="DomainTopNational60Percent" mode="copy" />
<xsl:apply-templates select="DomainBottomNational60Percent" mode="copy" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="NAPTestlet" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NAPTestRefId" mode="copy" />
<xsl:apply-templates select="NAPTestLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TestletContent" mode="NAPTestletContentType" />
<xsl:apply-templates select="TestItemList" mode="NAPTestItemListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PaymentReceipt" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="TransactionType" mode="copy" />
<xsl:apply-templates select="InvoiceRefId" mode="copy" />
<xsl:apply-templates select="PaymentReceiptLineList" mode="PaymentReceiptLineListType" />
<xsl:apply-templates select="VendorInfoRefId" mode="copy" />
<xsl:apply-templates select="DebtorRefId" mode="copy" />
<xsl:apply-templates select="ChargedLocationInfoRefId" mode="copy" />
<xsl:apply-templates select="TransactionDate" mode="copy" />
<xsl:apply-templates select="TransactionAmount" mode="DebitOrCreditAmountType" />
<xsl:apply-templates select="ReceivedTransactionId" mode="copy" />
<xsl:apply-templates select="FinancialAccountRefIdList" mode="FinancialAccountRefIdListType" />
<xsl:apply-templates select="AccountCodeList" mode="AccountCodeListType" />
<xsl:apply-templates select="TransactionDescription" mode="copy" />
<xsl:apply-templates select="TaxRate" mode="copy" />
<xsl:apply-templates select="TaxAmount" mode="MonetaryAmountType" />
<xsl:apply-templates select="TransactionMethod" mode="copy" />
<xsl:apply-templates select="ChequeNumber" mode="copy" />
<xsl:apply-templates select="TransactionNote" mode="copy" />
<xsl:apply-templates select="AccountingPeriod" mode="LocalIdType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="PurchaseOrder" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="StudentAttendanceCollection" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentAttendanceCollectionYear" mode="SchoolYearType" />
<xsl:apply-templates select="RoundCode" mode="copy" />
<xsl:apply-templates select="SoftwareVendorInfo" mode="SoftwareVendorInfoContainerType" />
<xsl:apply-templates select="StudentAttendanceCollectionReportingList" mode="StudentAttendanceCollectionReportingListType" />
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="VendorInfo" mode="object">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
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
<xsl:apply-templates select="LocalCodeList" mode="LocalCodeListType" />
<xsl:apply-templates select="SIF_Metadata" mode="SIF_MetadataType" />
<xsl:apply-templates select="SIF_ExtendedElements" mode="SIF_ExtendedElementsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AbstractContentElementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="XMLData" mode="XMLDataType" />
<xsl:apply-templates select="TextData" mode="TextDataType" />
<xsl:apply-templates select="BinaryData" mode="BinaryDataType" />
<xsl:apply-templates select="Reference" mode="ReferenceDataType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="XMLDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TextDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="BinaryDataType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReferenceDataType">
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
<xsl:template match="node()|@*" mode="ResourceUsageContentTypeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="LocalDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceReportColumnListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResourceReportColumn" mode="ResourceReportColumnType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceReportColumnType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ColumnName" mode="copy" />
<xsl:apply-templates select="ColumnDescription" mode="copy" />
<xsl:apply-templates select="ColumnDelimiter" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceReportLineListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ResourceReportLine" mode="ResourceReportLineType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ReportUserRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ResourceReportLineType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SIF_RefId" mode="ReportUserRefIdType" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
<xsl:apply-templates select="CurrentCost" mode="MonetaryAmountType" />
<xsl:apply-templates select="ReportRow" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HomeroomType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRoleObjectRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemContextListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SystemContext" mode="SystemContextType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemContextType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleList" mode="SystemRoleListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRoleListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Role" mode="SystemRoleElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRoleElementType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleScopeList" mode="SystemRoleScopeListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRoleScopeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleScope" mode="SystemRoleScopeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRoleScopeRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SystemRoleScopeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoleScopeName" mode="copy" />
<xsl:apply-templates select="RoleScopeRefId" mode="SystemRoleScopeRefIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TravelDetailsContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ToSchool" mode="SchoolTravelType" />
<xsl:apply-templates select="FromSchool" mode="SchoolTravelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SchoolTravelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TravelMode" mode="copy" />
<xsl:apply-templates select="TravelDetails" mode="copy" />
<xsl:apply-templates select="TravelAccompaniment" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryTransactionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Transaction" mode="LibraryTransactionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryTransactionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ItemInfo" mode="LibraryItemInfoType" />
<xsl:apply-templates select="CheckoutInfo" mode="CheckoutInfoType" />
<xsl:apply-templates select="FineInfoList" mode="FineInfoListType" />
<xsl:apply-templates select="HoldInfoList" mode="HoldInfoListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryItemInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Title" mode="copy" />
<xsl:apply-templates select="Author" mode="copy" />
<xsl:apply-templates select="ElectronicId" mode="ElectronicIdType" />
<xsl:apply-templates select="CallNumber" mode="copy" />
<xsl:apply-templates select="ISBN" mode="copy" />
<xsl:apply-templates select="Cost" mode="MonetaryAmountType" />
<xsl:apply-templates select="ReplacementCost" mode="MonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CheckoutInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CheckedOutOn" mode="copy" />
<xsl:apply-templates select="ReturnBy" mode="copy" />
<xsl:apply-templates select="RenewalCount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FineInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FineInfo" mode="FineInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FineInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Assessed" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Amount" mode="MonetaryAmountType" />
<xsl:apply-templates select="Reference" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HoldInfoListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="HoldInfo" mode="HoldInfoType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="HoldInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DatePlaced" mode="copy" />
<xsl:apply-templates select="DateNeeded" mode="copy" />
<xsl:apply-templates select="ReservationExpiry" mode="copy" />
<xsl:apply-templates select="MadeAvailable" mode="copy" />
<xsl:apply-templates select="Expires" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryMessageListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Message" mode="LibraryMessageType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LibraryMessageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Sent" mode="copy" />
<xsl:apply-templates select="Text" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentAttendanceCollectionReportingListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentAttendanceCollectionReporting" mode="StudentAttendanceCollectionReportingType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentAttendanceCollectionReportingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CommonwealthId" mode="copy" />
<xsl:apply-templates select="EntityName" mode="copy" />
<xsl:apply-templates select="EntityContact" mode="EntityContactInfoType" />
<xsl:apply-templates select="StatsCohortYearLevelList" mode="StatsCohortYearLevelListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatsCohortYearLevelListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatsCohortYearLevel" mode="StatsCohortYearLevelType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatsCohortYearLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CohortYearLevel" mode="YearLevelType" />
<xsl:apply-templates select="StatsCohortList" mode="StatsCohortListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatsCohortListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatsCohort" mode="StatsCohortType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StatsCohortType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StatsCohortId" mode="LocalIdType" />
<xsl:apply-templates select="StatsIndigenousStudentType" mode="copy" />
<xsl:apply-templates select="CohortGender" mode="copy" />
<xsl:apply-templates select="DaysInReferencePeriod" mode="copy" />
<xsl:apply-templates select="PossibleSchoolDays" mode="copy" />
<xsl:apply-templates select="AttendanceDays" mode="copy" />
<xsl:apply-templates select="AttendanceLess90Percent" mode="copy" />
<xsl:apply-templates select="AttendanceGTE90Percent" mode="copy" />
<xsl:apply-templates select="PossibleSchoolDaysGT90PercentAttendance" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressCollectionReportingListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AddressCollectionReporting" mode="AddressCollectionReportingType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressCollectionReportingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CommonwealthId" mode="copy" />
<xsl:apply-templates select="EntityName" mode="copy" />
<xsl:apply-templates select="EntityContact" mode="EntityContactInfoType" />
<xsl:apply-templates select="AGContextualQuestionList" mode="AGContextualQuestionListType" />
<xsl:apply-templates select="AddressCollectionStudentList" mode="AddressCollectionStudentListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressCollectionStudentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AddressCollectionStudent" mode="AddressCollectionStudentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AddressCollectionStudentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="EducationLevel" mode="copy" />
<xsl:apply-templates select="BoardingStatus" mode="copy" />
<xsl:apply-templates select="ReportingParent2" mode="copy" />
<xsl:apply-templates select="StudentAddress" mode="AddressType" />
<xsl:apply-templates select="Parent1" mode="AGParentType" />
<xsl:apply-templates select="Parent2" mode="AGParentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGParentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ParentName" mode="NameOfRecordType" />
<xsl:apply-templates select="AddressSameAsStudent" mode="copy" />
<xsl:apply-templates select="ParentAddress" mode="AddressType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGRoundListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AGRound" mode="AGRoundType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGRoundType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RoundCode" mode="copy" />
<xsl:apply-templates select="RoundName" mode="copy" />
<xsl:apply-templates select="StartDate" mode="copy" />
<xsl:apply-templates select="DueDate" mode="copy" />
<xsl:apply-templates select="EndDate" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGContextualQuestionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AGContextualQuestion" mode="AGContextualQuestionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGContextualQuestionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AGContextCode" mode="copy" />
<xsl:apply-templates select="AGAnswer" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CensusReportingListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CensusReporting" mode="CensusReportingType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CensusReportingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EntityLevel" mode="copy" />
<xsl:apply-templates select="CommonwealthId" mode="copy" />
<xsl:apply-templates select="EntityName" mode="copy" />
<xsl:apply-templates select="EntityContact" mode="EntityContactInfoType" />
<xsl:apply-templates select="CensusStaffList" mode="CensusStaffListType" />
<xsl:apply-templates select="CensusStudentList" mode="CensusStudentListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CensusStaffListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CensusStaff" mode="CensusStaffType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CensusStaffType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffCohortId" mode="LocalIdType" />
<xsl:apply-templates select="StaffActivity" mode="StaffActivityExtensionType" />
<xsl:apply-templates select="CohortGender" mode="copy" />
<xsl:apply-templates select="CohortIndigenousType" mode="copy" />
<xsl:apply-templates select="PrimaryFTE" mode="copy" />
<xsl:apply-templates select="SecondaryFTE" mode="copy" />
<xsl:apply-templates select="JobFTE" mode="copy" />
<xsl:apply-templates select="Headcount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StaffAssignmentMostRecentContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PrimaryFTE" mode="copy" />
<xsl:apply-templates select="SecondaryFTE" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CensusStudentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CensusStudent" mode="CensusStudentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CensusStudentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentCohortId" mode="LocalIdType" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="CensusAge" mode="copy" />
<xsl:apply-templates select="CohortGender" mode="copy" />
<xsl:apply-templates select="CohortIndigenousType" mode="copy" />
<xsl:apply-templates select="EducationMode" mode="copy" />
<xsl:apply-templates select="StudentOnVisa" mode="copy" />
<xsl:apply-templates select="OverseasStudent" mode="copy" />
<xsl:apply-templates select="DisabilityLevelOfAdjustment" mode="copy" />
<xsl:apply-templates select="DisabilityCategory" mode="copy" />
<xsl:apply-templates select="FTE" mode="copy" />
<xsl:apply-templates select="Headcount" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGReportingObjectResponseListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AGReportingObjectResponse" mode="AGReportingObjectResponseType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGReportingObjectResponseType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SubmittedRefId" mode="copy" />
<xsl:apply-templates select="SIFRefId" mode="copy" />
<xsl:apply-templates select="HTTPStatusCode" mode="copy" />
<xsl:apply-templates select="ErrorText" mode="copy" />
<xsl:apply-templates select="CommonwealthId" mode="copy" />
<xsl:apply-templates select="EntityName" mode="copy" />
<xsl:apply-templates select="AGSubmissionStatusCode" mode="copy" />
<xsl:apply-templates select="AGRuleList" mode="AGRuleListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FQReportingListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FQReporting" mode="FQReportingType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FQReportingType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="CommonwealthId" mode="copy" />
<xsl:apply-templates select="EntityName" mode="copy" />
<xsl:apply-templates select="EntityContact" mode="EntityContactInfoType" />
<xsl:apply-templates select="FQContextualQuestionList" mode="FQContextualQuestionListType" />
<xsl:apply-templates select="FQItemList" mode="FQItemListType" />
<xsl:apply-templates select="AGRuleList" mode="AGRuleListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FQContextualQuestionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FQContextualQuestion" mode="FQContextualQuestionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FQContextualQuestionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FQContext" mode="copy" />
<xsl:apply-templates select="FQAnswer" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FQItemListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FQItem" mode="FQItemType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="FQItemType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="FQItemCode" mode="copy" />
<xsl:apply-templates select="TuitionAmount" mode="copy" />
<xsl:apply-templates select="BoardingAmount" mode="copy" />
<xsl:apply-templates select="SystemAmount" mode="copy" />
<xsl:apply-templates select="DioceseAmount" mode="copy" />
<xsl:apply-templates select="FQComments" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGRuleListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AGRule" mode="AGRuleType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AGRuleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AGRuleCode" mode="copy" />
<xsl:apply-templates select="AGRuleComment" mode="copy" />
<xsl:apply-templates select="AGRuleResponse" mode="copy" />
<xsl:apply-templates select="AGRuleStatus" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SoftwareVendorInfoContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SoftwareProduct" mode="copy" />
<xsl:apply-templates select="SoftwareVersion" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeTableScheduleType">
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
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeTableScheduleCellListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeTableScheduleCell" mode="TimeTableScheduleCellType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeTableScheduleCellType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeTableScheduleCellLocalId" mode="LocalIdType" />
<xsl:apply-templates select="TimeTableSubjectRefId" mode="copy" />
<xsl:apply-templates select="TeachingGroupGUID" mode="copy" />
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
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingGroupScheduleListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TeachingGroupSchedule" mode="TeachingGroupScheduleType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TeachingGroupScheduleType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="EditorGUID" mode="RefIdType" />
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
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocalCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalCode" mode="LocalCodeType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LocalCodeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LocalisedCode" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
<xsl:apply-templates select="Element" mode="copy" />
<xsl:apply-templates select="ListIndex" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentGroupListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StudentGroup" mode="StudentGroupType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentGroupType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GroupCategory" mode="copy" />
<xsl:apply-templates select="GroupLocalId" mode="LocalIdType" />
<xsl:apply-templates select="GroupDescription" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PublishingPermissionListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PublishingPermission" mode="PublishingPermissionType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PublishingPermissionType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PermissionCategory" mode="copy" />
<xsl:apply-templates select="PermissionValue" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SettingLocationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SettingLocation" mode="SettingLocationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SettingLocationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SettingLocationName" mode="copy" />
<xsl:apply-templates select="SettingLocationType" mode="copy" />
<xsl:apply-templates select="SettingLocationRefId" mode="copy" />
<xsl:apply-templates select="SettingLocationObjectTypeName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ConsentToSharingOfDataContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DataDomainObligationList" mode="DataDomainObligationListType" />
<xsl:apply-templates select="NeverShareWithList" mode="NeverShareWithListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DataDomainObligationListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DataDomainObligation" mode="DataDomainObligationType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DataDomainObligationType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DataDomain" mode="copy" />
<xsl:apply-templates select="DomainComments" mode="copy" />
<xsl:apply-templates select="ShareWithList" mode="ShareWithListType" />
<xsl:apply-templates select="DoNotShareWithList" mode="DoNotShareWithListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ShareWithListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ShareWith" mode="ShareWithType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ShareWithType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ShareWithParty" mode="copy" />
<xsl:apply-templates select="ShareWithRefId" mode="copy" />
<xsl:apply-templates select="ShareWithObjectTypeName" mode="copy" />
<xsl:apply-templates select="ShareWithLocalId" mode="LocalIdType" />
<xsl:apply-templates select="ShareWithName" mode="copy" />
<xsl:apply-templates select="ShareWithRelationship" mode="copy" />
<xsl:apply-templates select="ShareWithPurpose" mode="copy" />
<xsl:apply-templates select="ShareWithRole" mode="copy" />
<xsl:apply-templates select="ShareWithComments" mode="copy" />
<xsl:apply-templates select="PermissionToOnShare" mode="copy" />
<xsl:apply-templates select="ShareWithURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DoNotShareWithListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DoNotShareWith" mode="DoNotShareWithType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="DoNotShareWithType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DoNotShareWithParty" mode="copy" />
<xsl:apply-templates select="DoNotShareWithRefId" mode="copy" />
<xsl:apply-templates select="DoNotShareWithObjectTypeName" mode="copy" />
<xsl:apply-templates select="DoNotShareWithLocalId" mode="LocalIdType" />
<xsl:apply-templates select="DoNotShareWithName" mode="copy" />
<xsl:apply-templates select="DoNotShareWithRelationship" mode="copy" />
<xsl:apply-templates select="DoNotShareWithPurpose" mode="copy" />
<xsl:apply-templates select="DoNotShareWithRole" mode="copy" />
<xsl:apply-templates select="DoNotShareWithComments" mode="copy" />
<xsl:apply-templates select="DoNotShareWithURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApplicableLawListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ApplicableLaw" mode="ApplicableLawType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ApplicableLawType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ApplicableCountry" mode="copy" />
<xsl:apply-templates select="ApplicableLawName" mode="copy" />
<xsl:apply-templates select="ApplicableLawURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PermissionToParticipateListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PermissionToParticipate" mode="PermissionToParticipateType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PermissionToParticipateType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PermissionCategory" mode="copy" />
<xsl:apply-templates select="Permission" mode="copy" />
<xsl:apply-templates select="PermissionValue" mode="copy" />
<xsl:apply-templates select="PermissionStartDate" mode="copy" />
<xsl:apply-templates select="PermissionEndDate" mode="copy" />
<xsl:apply-templates select="PermissionGranteeRefId" mode="copy" />
<xsl:apply-templates select="PermissionGranteeObjectTypeName" mode="copy" />
<xsl:apply-templates select="PermissionGranteeName" mode="copy" />
<xsl:apply-templates select="PermissionGranteeRelationship" mode="copy" />
<xsl:apply-templates select="PermissionComments" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NeverShareWithListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NeverShareWith" mode="NeverShareWithType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="NeverShareWithType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="NeverShareWithParty" mode="copy" />
<xsl:apply-templates select="NeverShareWithRefId" mode="copy" />
<xsl:apply-templates select="NeverShareWithObjectTypeName" mode="copy" />
<xsl:apply-templates select="NeverShareWithLocalId" mode="LocalIdType" />
<xsl:apply-templates select="NeverShareWithName" mode="copy" />
<xsl:apply-templates select="NeverShareWithRelationship" mode="copy" />
<xsl:apply-templates select="NeverShareWithPurpose" mode="copy" />
<xsl:apply-templates select="NeverShareWithRole" mode="copy" />
<xsl:apply-templates select="NeverShareWithComments" mode="copy" />
<xsl:apply-templates select="NeverShareWithURL" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GenericYesNoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="EntityContactInfoType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="NameType" />
<xsl:apply-templates select="PositionTitle" mode="copy" />
<xsl:apply-templates select="Role" mode="copy" />
<xsl:apply-templates select="RegistrationDetails" mode="copy" />
<xsl:apply-templates select="Qualifications" mode="copy" />
<xsl:apply-templates select="Address" mode="AddressType" />
<xsl:apply-templates select="Email" mode="EmailType" />
<xsl:apply-templates select="PhoneNumber" mode="PhoneNumberType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CopyRightContainerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Date" mode="copy" />
<xsl:apply-templates select="Holder" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StandardsSettingBodyType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Country" mode="CountryType" />
<xsl:apply-templates select="StateProvince" mode="StateProvinceType" />
<xsl:apply-templates select="SettingBodyName" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StandardHierarchyLevelType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StandardIdentifierType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="YearCreated" mode="copy" />
<xsl:apply-templates select="ACStrandSubjectArea" mode="ACStrandSubjectAreaType" />
<xsl:apply-templates select="StandardNumber" mode="copy" />
<xsl:apply-templates select="YearLevels" mode="YearLevelsType" />
<xsl:apply-templates select="Benchmark" mode="copy" />
<xsl:apply-templates select="YearLevel" mode="YearLevelType" />
<xsl:apply-templates select="IndicatorNumber" mode="copy" />
<xsl:apply-templates select="AlternateIdentificationCodes" mode="AlternateIdentificationCodeListType" />
<xsl:apply-templates select="Organization" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AlternateIdentificationCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AlternateIdentificationCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RelatedLearningStandardItemRefIdListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="RelatedLearningStandardItemRefIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="RelatedLearningStandardItemRefIdType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="node()" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ValidLetterMarkListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ValidLetterMark" mode="ValidLetterMarkType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ValidLetterMarkType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Code" mode="copy" />
<xsl:apply-templates select="NumericEquivalent" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentGradeMarkersListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Marker" mode="MarkerType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="MarkerType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StaffPersonalRefId" mode="copy" />
<xsl:apply-templates select="Role" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GradingScoreListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GradingAssignmentScore" mode="AssignmentScoreType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssignmentScoreType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GradingAssignmentScoreRefId" mode="copy" />
<xsl:apply-templates select="Weight" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GradeType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Percentage" mode="copy" />
<xsl:apply-templates select="Numeric" mode="copy" />
<xsl:apply-templates select="Letter" mode="copy" />
<xsl:apply-templates select="Narrative" mode="copy" />
<xsl:apply-templates select="MarkInfoRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandard" mode="LearningStandardType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LearningStandardType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="LearningStandardItemRefId" mode="copy" />
<xsl:apply-templates select="LearningStandardURL" mode="copy" />
<xsl:apply-templates select="LearningStandardLocalId" mode="LocalIdType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="AssignmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="GradingAssignmentRefId" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="GenericRubricType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="RubricType" mode="copy" />
<xsl:apply-templates select="ScoreList" mode="ScoreListType" />
<xsl:apply-templates select="Descriptor" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SymptomListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Symptom" mode="copy" />
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
<xsl:apply-templates select="MedicationName" mode="copy" />
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
<xsl:apply-templates select="Date" mode="copy" />
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
<xsl:apply-templates select="SuspensionNotes" mode="copy" />
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
<xsl:apply-templates select="NAPTestItemLocalId" mode="LocalIdType" />
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
<xsl:apply-templates select="OtherSchoolName" mode="copy" />
<xsl:apply-templates select="DisabilityLevelOfAdjustment" mode="copy" />
<xsl:apply-templates select="DisabilityCategory" mode="copy" />
<xsl:apply-templates select="CensusAge" mode="copy" />
<xsl:apply-templates select="DistanceEducationStudent" mode="copy" />
<xsl:apply-templates select="BoardingStatus" mode="copy" />
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
<xsl:apply-templates select="ParentSchoolRefId" mode="copy" />
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
<xsl:apply-templates select="LocalItemId" mode="LocalIdType" />
<xsl:apply-templates select="Quantity" mode="copy" />
<xsl:apply-templates select="UnitCost" mode="MonetaryAmountType" />
<xsl:apply-templates select="TotalCost" mode="MonetaryAmountType" />
<xsl:apply-templates select="QuantityDelivered" mode="copy" />
<xsl:apply-templates select="CancelledOrder" mode="copy" />
<xsl:apply-templates select="TaxRate" mode="copy" />
<xsl:apply-templates select="ExpenseAccounts" mode="ExpenseAccountsType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ExpenseAccountsType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="ExpenseAccount" mode="ExpenseAccountType" />
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
<xsl:template match="node()|@*" mode="AccountCodeListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="AccountCode" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="JournalAdjustmentListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="JournalAdjustment" mode="JournalAdjustmentType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="JournalAdjustmentType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DebitFinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="CreditFinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="DebitAccountCode" mode="copy" />
<xsl:apply-templates select="CreditAccountCode" mode="copy" />
<xsl:apply-templates select="GSTCodeOriginal" mode="copy" />
<xsl:apply-templates select="GSTCodeReplacement" mode="copy" />
<xsl:apply-templates select="LineAdjustmentAmount" mode="MonetaryAmountType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PaymentReceiptLineListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="PaymentReceiptLine" mode="PaymentReceiptLineType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PaymentReceiptLineType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="InvoiceRefId" mode="copy" />
<xsl:apply-templates select="LocalId" mode="LocalIdType" />
<xsl:apply-templates select="LocalPaymentReceiptLineId" mode="LocalIdType" />
<xsl:apply-templates select="TransactionAmount" mode="DebitOrCreditAmountType" />
<xsl:apply-templates select="FinancialAccountRefId" mode="copy" />
<xsl:apply-templates select="AccountCode" mode="copy" />
<xsl:apply-templates select="TransactionDescription" mode="copy" />
<xsl:apply-templates select="TaxRate" mode="copy" />
<xsl:apply-templates select="TaxAmount" mode="MonetaryAmountType" />
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
<xsl:apply-templates select="RegistrationDetails" mode="copy" />
<xsl:apply-templates select="Qualifications" mode="copy" />
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
<xsl:apply-templates select="MapNumber" mode="copy" />
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
<xsl:apply-templates select="Deceased" mode="copy" />
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
<xsl:apply-templates select="VisaNumber" mode="copy" />
<xsl:apply-templates select="VisaGrantDate" mode="copy" />
<xsl:apply-templates select="VisaExpiryDate" mode="copy" />
<xsl:apply-templates select="VisaConditions" mode="copy" />
<xsl:apply-templates select="VisaStudyEntitlement" mode="copy" />
<xsl:apply-templates select="VisaSubClassList" mode="VisaSubClassListType" />
<xsl:apply-templates select="Passport" mode="PassportType" />
<xsl:apply-templates select="LBOTE" mode="copy" />
<xsl:apply-templates select="InterpreterRequired" mode="copy" />
<xsl:apply-templates select="ImmunisationCertificateStatus" mode="copy" />
<xsl:apply-templates select="CulturalBackground" mode="copy" />
<xsl:apply-templates select="MaritalStatus" mode="copy" />
<xsl:apply-templates select="MedicareNumber" mode="copy" />
<xsl:apply-templates select="MedicarePositionNumber" mode="copy" />
<xsl:apply-templates select="MedicareCardHolder" mode="copy" />
<xsl:apply-templates select="PrivateHealthInsurance" mode="PrivateHealthInsuranceType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PrivateHealthInsuranceType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Company" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="PassportType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="ExpiryDate" mode="copy" />
<xsl:apply-templates select="Country" mode="CountryType" />
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
<xsl:apply-templates select="SpanGaps" mode="SpanGapListType" />
<xsl:apply-templates select="IsCurrent" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SpanGapListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="SpanGap" mode="SpanGapType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="SpanGapType">
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
<xsl:apply-templates select="Created" mode="CreatedType" />
<xsl:apply-templates select="ModificationHistory" mode="ModifiedListType" />
<xsl:apply-templates select="TimeElements" mode="TimeElementListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ModifiedListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Modified" mode="ModifiedType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="ModifiedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="By" mode="copy" />
<xsl:apply-templates select="DateTime" mode="copy" />
<xsl:apply-templates select="Description" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CreatedType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="DateTime" mode="copy" />
<xsl:apply-templates select="Creators" mode="CreatorListType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="CreatorListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Creator" mode="LifeCycleCreatorType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="LifeCycleCreatorType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Name" mode="copy" />
<xsl:apply-templates select="ID" mode="copy" />
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
<xsl:apply-templates select="TimeElements" mode="TimeElementListType" />
<xsl:apply-templates select="LifeCycle" mode="LifeCycleType" />
<xsl:apply-templates select="EducationFilter" mode="EducationFilterType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="TimeElementListType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="TimeElement" mode="TimeElementType" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="StudentContactFeePercentageType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="Curriculum" mode="copy" />
<xsl:apply-templates select="Other" mode="copy" />
</xsl:copy>
</xsl:template>
<xsl:template match="node()|@*" mode="WorkingWithChildrenCheckType">
<xsl:copy>
    <xsl:apply-templates select="@*" mode="copy" />
<xsl:apply-templates select="StateTerritory" mode="StateProvinceType" />
<xsl:apply-templates select="Number" mode="copy" />
<xsl:apply-templates select="HolderName" mode="copy" />
<xsl:apply-templates select="Type" mode="copy" />
<xsl:apply-templates select="Reasons" mode="copy" />
<xsl:apply-templates select="Determination" mode="copy" />
<xsl:apply-templates select="CheckDate" mode="copy" />
<xsl:apply-templates select="DeterminationDate" mode="copy" />
<xsl:apply-templates select="ExpiryDate" mode="copy" />
</xsl:copy>
</xsl:template>
</xsl:stylesheet>
