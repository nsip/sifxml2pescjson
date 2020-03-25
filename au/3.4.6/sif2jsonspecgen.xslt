<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:json="http://json.org/">
  <!-- from https://gist.github.com/inancgumus/3ce56ddde6d5c93f3550b3b4cdc6bcb8 -->
  <!-- https://github.com/bramstein/xsltjson/blob/master/conf/xml-to-jsonml.xsl -->
  <xsl:output method="text" omit-xml-declaration="yes" encoding="utf-8"/>

  <xsl:template match="/*[node()]">
    <xsl:apply-templates select="." mode="obj-detect" />
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
    <xsl:text>"</xsl:text><xsl:apply-templates select="node/@TEXT | text()"/><xsl:text>"</xsl:text>
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
  <xsl:template match="Activity | AggregateCharacteristicInfo | AggregateStatisticFact | AggregateStatisticInfo | CalendarDate | CalendarSummary | EquipmentInfo | GradingAssignment | GradingAssignmentScore | Identity | LEAInfo | LearningResource | LearningResourcePackage | LearningStandardDocument | LearningStandardItem | MarkValueInfo | PersonPicture | PersonalisedPlan | ResourceBooking | ResourceUsage | RoomInfo | ScheduledActivity | SchoolCourseInfo | SchoolInfo | SchoolPrograms | SectionInfo | SessionInfo | StaffAssignment | StaffPersonal | StudentActivityInfo | StudentActivityParticipation | StudentAttendanceSummary | StudentAttendanceTimeList | StudentContactPersonal | StudentContactRelationship | StudentDailyAttendance | StudentGrade | StudentParticipation | StudentPeriodAttendance | StudentPersonal | StudentSchoolEnrollment | StudentScoreJudgementAgainstStandard | StudentSectionEnrollment | SystemRole | TeachingGroup | TermInfo | TimeTable | TimeTableCell | TimeTableContainer | TimeTableSubject | WellbeingAlert | WellbeingAppeal | WellbeingCharacteristic | WellbeingEvent | WellbeingPersonLink | WellbeingResponse | AGAddressCollectionSubmission | AGCensusSubmission | AGGetRound | AGStatusReport | ChargedLocationInfo | Debtor | FinancialAccount | FinancialQuestionnaireSubmission | Invoice | Journal | NAPCodeFrame | NAPEventStudentLink | NAPStudentResponseSet | NAPTest | NAPTestItem | NAPTestScoreSummary | NAPTestlet | PaymentReceipt | PurchaseOrder | VendorInfo" mode="obj-list">
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
  <xsl:template match="Activity/Points | ActivityTime/Duration | Activity/MaxAttemptsAllowed | Activity/ActivityWeight | LocalCode/ListIndex | AggregateStatisticFact/Value | CalendarDate/CalendarDateNumber | StudentAttendance/AttendanceValue | TeacherAttendance/AttendanceValue | AdministratorAttendance/AttendanceValue | CalendarSummary/DaysInSession | CalendarSummary/InstructionalMinutes | CalendarSummary/MinutesPerDay | GradingAssignment/PointsPossible | GradingAssignment/Weight | GradingAssignment/MaxAttemptsAllowed | Score/MaxScoreValue | ScoreDescription/ScoreValue | GradingAssignmentScore/ScorePoints | GradingAssignmentScore/ScorePercent | Subscore/SubscoreValue | GridLocation/Latitude | GridLocation/Longitude | PhoneNumber/Preference | StandardHierarchyLevel/Number | MarkValueInfo/PercentageMinimum | MarkValueInfo/PercentageMaximum | MarkValueInfo/PercentagePassingGrade | MarkValueInfo/NumericPrecision | MarkValueInfo/NumericScale | MarkValueInfo/NumericLow | MarkValueInfo/NumericHigh | MarkValueInfo/NumericPassingGrade | ValidLetterMark/NumericEquivalent | MarkValueInfo/NarrativeMaximumSize | ResourceReportLine/CurrentCost | RoomInfo/Size | RoomInfo/Capacity | TeacherCover/Weighting | SchoolInfo/ARIA | StaffAssignment/JobFTE | StaffSubject/PreferenceNumber | HouseholdContactInfo/PreferenceNumber | StudentAttendanceSummary/StartDay | StudentAttendanceSummary/EndDay | StudentAttendanceSummary/FTE | StudentAttendanceSummary/DaysAttended | StudentAttendanceSummary/ExcusedAbsences | StudentAttendanceSummary/UnexcusedAbsences | StudentAttendanceSummary/DaysTardy | StudentAttendanceSummary/DaysInMembership | AttendanceTime/DurationValue | StudentContactRelationship/ContactSequence | StudentDailyAttendance/AbsenceValue | GradingAssignmentScore/Weight | Grade/Percentage | Grade/Numeric | StudentParticipation/StudentSpecialEducationFTE | MostRecent/FTE | MostRecent/CensusAge | StudentSchoolEnrollment/FTE | StudentSubjectChoice/PreferenceNumber | StudentSchoolEnrollment/CensusAge | TeachingGroup/Semester | TeachingGroup/MinClassSize | TeachingGroup/MaxClassSize | TermInfo/RelativeDuration | TimeTable/DaysPerCycle | TimeTable/PeriodsPerDay | TimeTable/TeachingPeriodsPerDay | TimeTablePeriod/InstructionalMinutes | TimeTableSchedule/DaysPerCycle | TimeTableSchedule/PeriodsPerDay | TimeTableSchedule/TeachingPeriodsPerDay | TeachingGroupScheduleList/Semester | TeachingGroupScheduleList/MinClassSize | TeachingGroupScheduleList/MaxClassSize | TimeTableSubject/ProposedMaxClassSize | TimeTableSubject/ProposedMinClassSize | TimeTableSubject/Semester | Suspension/Duration | CensusStaff/JobFTE | CensusStaff/PrimaryFTE | CensusStaff/SecondaryFTE | CensusStaff/Headcount | CensusStudent/FTE | CensusStudent/CensusAge | CensusStudent/Headcount | FQItem/TuitionAmount | FQItem/BoardingAmount | FQItem/SystemAmount | FQItem/DioceseAmount | Invoice/BilledAmount | Invoice/NetAmount | Invoice/TaxRate | Invoice/TaxAmount | PurchasingItem/UnitCost | PurchasingItem/TotalCost | PurchasingItem/TaxRate | ExpenseAccount/Amount | Journal/Amount | JournalAdjustment/LineAdjustmentAmount | TestContent/StagesCount | DomainBands/Band1Lower | DomainBands/Band1Upper | DomainBands/Band2Lower | DomainBands/Band2Upper | DomainBands/Band3Lower | DomainBands/Band3Upper | DomainBands/Band4Lower | DomainBands/Band4Upper | DomainBands/Band5Lower | DomainBands/Band5Upper | DomainBands/Band6Lower | DomainBands/Band6Upper | DomainBands/Band7Lower | DomainBands/Band7Upper | DomainBands/Band8Lower | DomainBands/Band8Upper | DomainBands/Band9Lower | DomainBands/Band9Upper | DomainBands/Band10Lower | DomainBands/Band10Upper | DomainProficiency/Level1Lower | DomainProficiency/Level1Upper | DomainProficiency/Level2Lower | DomainProficiency/Level2Upper | DomainProficiency/Level3Lower | DomainProficiency/Level3Upper | DomainProficiency/Level4Lower | DomainProficiency/Level4Upper | TestletContent/LocationInStage | TestletContent/TestletMaximumScore | TestItem/SequenceNumber | TestItemContent/MultipleChoiceOptionCount | TestItemContent/MaximumScore | TestItemContent/ItemDifficulty | TestItemContent/ItemDifficultyLogit5 | TestItemContent/ItemDifficultyLogit62 | TestItemContent/ItemDifficultyLogit5SE | TestItemContent/ItemDifficultyLogit62SE | TestItemContent/ItemProficiencyBand | Stimulus/WordCount | DomainScore/RawScore | DomainScore/ScaledScoreValue | DomainScore/ScaledScoreLogitValue | DomainScore/ScaledScoreStandardError | DomainScore/ScaledScoreLogitStandardError | DomainScore/StudentDomainBand | PlausibleScaledValueList/PlausibleScaledValue | Testlet/TestletSubScore | ItemResponse/Score | ItemResponse/SequenceNumber | ItemResponse/ItemWeight | NAPTestScoreSummary/DomainNationalAverage | NAPTestScoreSummary/DomainSchoolAverage | NAPTestScoreSummary/DomainJurisdictionAverage | NAPTestScoreSummary/DomainTopNational60Percent | NAPTestScoreSummary/DomainBottomNational60Percent | PaymentReceiptLine/TransactionAmount | PaymentReceiptLine/TaxRate | PaymentReceiptLine/TaxAmount | PaymentReceipt/TransactionAmount | PaymentReceipt/TaxRate | PaymentReceipt/TaxAmount | PurchaseOrder/TaxRate | PurchaseOrder/TaxAmount | PurchaseOrder/TotalAmount | TimeElement/IsCurrent | GradingAssignmentScore/ExpectedScore | ResourceBooking/KeepOld | StudentParticipation/ExtendedSchoolYear | StudentParticipation/ExtendedDay | WellbeingEvent/GroupIndicator | TestItemContent/ReleasedStatus | NAPEventStudentLink/PersonalDetailsChanged | NAPEventStudentLink/PSIOtherIdMatch | NAPEventStudentLink/PossibleDuplicate | NAPEventStudentLink/DOBRange | NAPStudentResponseSet/ReportExclusionFlag" mode="value">
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
  <xsl:template match="OtherCodeList/OtherCode | SourceObjects/SourceObject | ActivityTime/Duration | SIF_ExtendedElements/SIF_ExtendedElement | AggregateStatisticInfo/CalculationRule | ExclusionRules/ExclusionRule | Location/LocationRefId | EquipmentInfo/SIF_RefId | Identity/SIF_RefId | IdentityAssertions/IdentityAssertion | PasswordList/Password | StatisticalAreas/StatisticalArea | EmailList/Email | Contact/Email | LearningResource/Location | AssociatedObjects/AssociatedObject | LearningResourcePackage/XMLData | LearningResourcePackage/TextData | LearningResourcePackage/BinaryData | RichDescription/XMLData | RichDescription/TextData | RichDescription/BinaryData | Resources/LearningResourceRefId | RelatedLearningStandardItems/LearningStandardItemRefId | PersonPicture/ParentObjectRefId | PersonPicture/PictureSource | ResourceBooking/ResourceRefId | ResourceReportLine/SIF_RefId | ResourceReportLine/CurrentCost | ScheduledActivity/Override | OtherIdList/OtherId | SchoolInfo/OtherLEA | SchoolEmailList/Email | ElectronicIdList/ElectronicId | StudentParticipation/ManagingSchool | AlertMessages/AlertMessage | MedicalAlertMessages/MedicalAlertMessage | StudentSchoolEnrollment/Homeroom | StudentSchoolEnrollment/Advisor | StudentSchoolEnrollment/Counselor | StudentSchoolEnrollment/Calendar | SystemRole/SIF_RefId | RoleScope/RoleScopeRefId | PersonInvolvement/PersonRefId | WellbeingPersonLink/PersonRefId | EntityContact/Email | Debtor/BilledEntity | Invoice/InvoicedEntity | Invoice/BilledAmount | Invoice/NetAmount | Invoice/TaxAmount | PurchasingItem/UnitCost | PurchasingItem/TotalCost | ExpenseAccount/Amount | Journal/OriginatingTransactionRefId | Journal/Amount | JournalAdjustment/LineAdjustmentAmount | PaymentReceiptLine/TransactionAmount | PaymentReceiptLine/TaxAmount | PaymentReceipt/TransactionAmount | PaymentReceipt/TaxAmount | PurchaseOrder/TaxAmount | PurchaseOrder/TotalAmount" mode="detect" priority="1">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="obj-content"/>
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
  </xsl:template>

  <!-- list  - takes precedence when list of elements which are simple content with attributes -->
  <xsl:template match="SoftwareRequirementList/SoftwareRequirement | EssentialMaterials/EssentialMaterial | LearningObjectives/LearningObjective | LearningStandards/LearningStandardItemRefId | OtherCodeList/OtherCode | Prerequisites/Prerequisite | Students/StudentPersonalRefId | SourceObjects/SourceObject | LearningResources/LearningResourceRefId | LocalCodeList/LocalCode | TimeElements/TimeElement | SpanGaps/SpanGap | Creators/Creator | ModificationHistory/Modified | LearningStandardItems/LearningStandardItemRefId | SIF_ExtendedElements/SIF_ExtendedElement | Characteristics/AggregateCharacteristicInfoRefId | ExclusionRules/ExclusionRule | YearLevels/YearLevel | StudentPersonalRefIdList/StudentPersonalRefId | SubAssignmentList/GradingAssignmentRefId | ScoreList/Score | ScoreDescriptionList/ScoreDescription | PrerequisiteList/Prerequisite | LearningStandardList/LearningStandard | SubscoreList/Subscore | IdentityAssertions/IdentityAssertion | PasswordList/Password | LEAContactList/LEAContact | StatisticalAreas/StatisticalArea | EmailList/Email | PhoneNumberList/PhoneNumber | AddressList/Address | Contacts/Contact | SubjectAreas/ACStrandSubjectArea | MediaTypes/MediaType | Approvals/Approval | Evaluations/Evaluation | Components/Component | Strategies/Strategy | AssociatedObjects/AssociatedObject | Organizations/Organization | Authors/Author | RelatedLearningStandards/LearningStandardDocumentRefId | Resources/LearningResourceRefId | PredecessorItems/LearningStandardItemRefId | StatementCodes/StatementCode | Statements/Statement | AlternateIdentificationCodes/AlternateIdentificationCode | RelatedLearningStandardItems/LearningStandardItemRefId | ValidLetterMarkList/ValidLetterMark | PublishingPermissionList/PublishingPermission | DocumentList/Document | ResourceReportColumnList/ResourceReportColumn | ResourceReportLineList/ResourceReportLine | StaffList/StaffPersonalRefId | TeacherList/TeacherCover | RoomList/RoomInfoRefId | StudentList/StudentPersonalRefId | TeachingGroupList/TeachingGroupRefId | SubjectAreaList/SubjectArea | OtherIdList/OtherId | SchoolFocusList/SchoolFocus | SchoolEmailList/Email | SchoolContactList/SchoolContact | YearLevelEnrollmentList/YearLevelEnrollment | SchoolGroupList/SchoolGroup | SchoolProgramList/Program | StaffSubjectList/StaffSubject | CalendarSummaryList/CalendarSummaryRefId | ElectronicIdList/ElectronicId | OtherNames/Name | CountriesOfCitizenship/CountryOfCitizenship | CountriesOfResidency/CountryOfResidency | LanguageList/Language | ReligiousEventList/ReligiousEvent | VisaSubClassList/VisaSubClass | HouseholdContactInfoList/HouseholdContactInfo | NAPLANClassList/ClassCode | RecognitionList/Recognition | AttendanceTimes/AttendanceTime | PeriodAttendances/PeriodAttendance | HouseholdList/Household | Markers/Marker | GradingScoreList/GradingAssignmentScore | ProgramFundingSources/ProgramFundingSource | AlertMessages/AlertMessage | MedicalAlertMessages/MedicalAlertMessage | StudentSubjectChoiceList/StudentSubjectChoice | StudentGroupList/StudentGroup | SystemContextList/SystemContext | RoleList/Role | RoleScopeList/RoleScope | StudentList/TeachingGroupStudent | TeacherList/TeachingGroupTeacher | TeachingGroupPeriodList/TeachingGroupPeriod | TimeTableDayList/TimeTableDay | TimeTablePeriodList/TimeTablePeriod | TimeTableScheduleCellList/TimeTableScheduleCell | SymptomList/Symptom | MedicationList/Medication | WellbeingEventCategoryList/WellbeingEventCategory | WellbeingEventSubCategoryList/WellbeingEventSubCategory | PersonInvolvementList/PersonInvolvement | FollowUpActionList/FollowUpAction | WithdrawalTimeList/Withdrawal | PlanRequiredList/Plan | AddressCollectionReportingList/AddressCollectionReporting | AGContextualQuestionList/AGContextualQuestion | AddressCollectionStudentList/AddressCollectionStudent | CensusReportingList/CensusReporting | CensusStaffList/CensusStaff | CensusStudentList/CensusStudent | AGRoundList/AGRound | AGReportingObjectResponseList/AGReportingObjectResponse | AGRuleList/AGRule | FQReportingList/FQReporting | FQContextualQuestionList/FQContextualQuestion | FQItemList/FQItem | FinancialAccountRefIdList/FinancialAccountRefId | AccountCodeList/AccountCode | PurchasingItems/PurchasingItem | ExpenseAccounts/ExpenseAccount | JournalAdjustmentList/JournalAdjustment | TestletList/Testlet | TestItemList/TestItem | ItemSubstitutedForList/SubstituteItem | PNPCodeList/PNPCode | ContentDescriptionList/ContentDescription | StimulusList/Stimulus | NAPWritingRubricList/NAPWritingRubric | TestDisruptionList/TestDisruption | PlausibleScaledValueList/PlausibleScaledValue | ItemResponseList/ItemResponse | PaymentReceiptLineList/PaymentReceiptLine" mode="detect" priority="2">
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
    <xsl:if test="count(@*) &gt; 0">, </xsl:if>
    <xsl:apply-templates select="./*" mode="detect" />
    <xsl:if test="count(child::*) = 0 and text() and not(@*)">
      <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="value"/>
    </xsl:if>
    <xsl:if test="count(child::*) = 0 and text() and @*">
      <xsl:text>"value" : </xsl:text><xsl:apply-templates select="." mode="value"/>
    </xsl:if>
    <xsl:if test="count(child::*) = 0 and not(text()) and @*">
      <xsl:text>"value" : ""</xsl:text>
    </xsl:if>
    <xsl:text>}</xsl:text>
    <xsl:if test="position() &lt; last()">, </xsl:if>
  </xsl:template>

  <!-- simple content with attribute -->
  <xsl:template match="OtherCodeList/OtherCode | SourceObjects/SourceObject | ActivityTime/Duration | SIF_ExtendedElements/SIF_ExtendedElement | AggregateStatisticInfo/CalculationRule | ExclusionRules/ExclusionRule | Location/LocationRefId | EquipmentInfo/SIF_RefId | Identity/SIF_RefId | IdentityAssertions/IdentityAssertion | PasswordList/Password | StatisticalAreas/StatisticalArea | EmailList/Email | Contact/Email | LearningResource/Location | AssociatedObjects/AssociatedObject | LearningResourcePackage/XMLData | LearningResourcePackage/TextData | LearningResourcePackage/BinaryData | RichDescription/XMLData | RichDescription/TextData | RichDescription/BinaryData | Resources/LearningResourceRefId | RelatedLearningStandardItems/LearningStandardItemRefId | PersonPicture/ParentObjectRefId | PersonPicture/PictureSource | ResourceBooking/ResourceRefId | ResourceReportLine/SIF_RefId | ResourceReportLine/CurrentCost | ScheduledActivity/Override | OtherIdList/OtherId | SchoolInfo/OtherLEA | SchoolEmailList/Email | ElectronicIdList/ElectronicId | StudentParticipation/ManagingSchool | AlertMessages/AlertMessage | MedicalAlertMessages/MedicalAlertMessage | StudentSchoolEnrollment/Homeroom | StudentSchoolEnrollment/Advisor | StudentSchoolEnrollment/Counselor | StudentSchoolEnrollment/Calendar | SystemRole/SIF_RefId | RoleScope/RoleScopeRefId | PersonInvolvement/PersonRefId | WellbeingPersonLink/PersonRefId | EntityContact/Email | Debtor/BilledEntity | Invoice/InvoicedEntity | Invoice/BilledAmount | Invoice/NetAmount | Invoice/TaxAmount | PurchasingItem/UnitCost | PurchasingItem/TotalCost | ExpenseAccount/Amount | Journal/OriginatingTransactionRefId | Journal/Amount | JournalAdjustment/LineAdjustmentAmount | PaymentReceiptLine/TransactionAmount | PaymentReceiptLine/TaxAmount | PaymentReceipt/TransactionAmount | PaymentReceipt/TaxAmount | PurchaseOrder/TaxAmount | PurchaseOrder/TotalAmount" mode="obj-content">
    <xsl:text>{</xsl:text>
    <xsl:apply-templates select="@*" mode="attr" />
    <xsl:if test="count(@*) &gt; 0">, </xsl:if>
    <xsl:apply-templates select="./*" mode="detect" />
    <xsl:if test="count(child::*) = 0 and text()">
      <xsl:text>"value" : </xsl:text><xsl:apply-templates select="." mode="value"/>
    </xsl:if>
    <xsl:if test="count(child::*) = 0 and not(text())">
      <xsl:text>"value" : ""</xsl:text>
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
