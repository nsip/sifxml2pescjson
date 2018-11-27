(byebug) 
[51, 60] in /Users/nickn/Documents/Arbeit/sifxml2pescjson/makexslt.rb
   51:     booleanattr << path
   52:   end
   53: end
   54: 
   55: require "byebug"; byebug
=> 56: if options[:path_truncate]
   57:   complexattr = truncate_paths(complexattr)
   58:   simpleattr = truncate_paths(simpleattr)
   59:   list = truncate_paths(list)
   60:   numericattr = truncate_paths(numericattr)
<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
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
  <xsl:template match="Provider | ProviderRelationship | EducationOrganisation | StaffPersonal | StaffAssignment | StudentPersonal | StudentContactPersonal | StudentContactRelationship | TeachingGroup | ProviderCourse | LearningStandard | Credential | StudentProviderEnrolment | StudentAttendanceSummary | StudentAttendanceTimeList | WellbeingAlert | WellbeingCharacteristic | WellbeingEvent | WellbeingResponse | WellbeingAppeal | AssessmentTask | AssessmentTaskResult | AssessmentTaskRegistration" mode="obj-list">
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
  <xsl:template match="Provider/Organisation/AddressList/Address/Location/GridLocation/Latitude | Provider/Organisation/AddressList/Address/Location/GridLocation/Longitude | Provider/Organisation/ContactList/Contact/AddressList/Address/Location/GridLocation/Latitude | Provider/Organisation/ContactList/Contact/AddressList/Address/Location/GridLocation/Longitude | Provider/Organisation/LocationList/Location/GridLocation/Latitude | Provider/Organisation/LocationList/Location/GridLocation/Longitude | Provider/SchoolService/Decile | EducationOrganisation/Organisation/AddressList/Address/Location/GridLocation/Latitude | EducationOrganisation/Organisation/AddressList/Address/Location/GridLocation/Longitude | EducationOrganisation/Organisation/ContactList/Contact/AddressList/Address/Location/GridLocation/Latitude | EducationOrganisation/Organisation/ContactList/Contact/AddressList/Address/Location/GridLocation/Longitude | EducationOrganisation/Organisation/LocationList/Location/GridLocation/Latitude | EducationOrganisation/Organisation/LocationList/Location/GridLocation/Longitude | StaffPersonal/PersonInfo/AddressList/Address/Location/GridLocation/Latitude | StaffPersonal/PersonInfo/AddressList/Address/Location/GridLocation/Longitude | StaffPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/PreferenceNumber | StaffPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/AddressList/Address/Location/GridLocation/Latitude | StaffPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/AddressList/Address/Location/GridLocation/Longitude | StaffAssignment/StaffSubjectList/StaffSubject/PreferenceNumber | StudentPersonal/NationalStudentNumber | StudentPersonal/PersonInfo/AddressList/Address/Location/GridLocation/Latitude | StudentPersonal/PersonInfo/AddressList/Address/Location/GridLocation/Longitude | StudentPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/PreferenceNumber | StudentPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/AddressList/Address/Location/GridLocation/Latitude | StudentPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/AddressList/Address/Location/GridLocation/Longitude | StudentContactPersonal/PersonInfo/AddressList/Address/Location/GridLocation/Latitude | StudentContactPersonal/PersonInfo/AddressList/Address/Location/GridLocation/Longitude | StudentContactPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/PreferenceNumber | StudentContactPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/AddressList/Address/Location/GridLocation/Latitude | StudentContactPersonal/PersonInfo/HouseholdContactInfoList/HouseholdContactInfo/AddressList/Address/Location/GridLocation/Longitude | StudentContactRelationship/ContactSequence | ProviderCourse/Duration | ProviderCourse/LanguageOfInstructionList/Language/HoursPerWeek | LearningStandard/VersionNo | LearningStandard/Credits | LearningStandard/NCEALevel | Credential/VersionNo | Credential/Credits | Credential/NZQFLevel | StudentProviderEnrolment/SchoolEnrolmentList/SchoolEnrolment/FTE | StudentProviderEnrolment/SchoolEnrolmentList/SchoolEnrolment/CurriculumLevel | StudentProviderEnrolment/SchoolEnrolmentList/SchoolEnrolment/LanguageOfInstructionList/Language/HoursPerWeek | StudentProviderEnrolment/SchoolEnrolmentList/SchoolEnrolment/SubjectChoiceList/StudentSubjectChoice/PreferenceNumber | StudentProviderEnrolment/SchoolEnrolmentList/SchoolEnrolment/CourseChoiceList/StudentCourseChoice/PreferenceNumber | StudentProviderEnrolment/SchoolEnrolmentList/SchoolEnrolment/InternationalEnrolment/TuitionWeeklyFee | StudentAttendanceSummary/StartDay | StudentAttendanceSummary/EndDay | StudentAttendanceSummary/FTE | StudentAttendanceSummary/DaysAttended | StudentAttendanceSummary/ExcusedAbsences | StudentAttendanceSummary/UnexcusedAbsences | StudentAttendanceSummary/DaysTardy | StudentAttendanceSummary/DaysInMembership | StudentAttendanceTimeList/AttendanceTimes/AttendanceTime/DurationValue | WellbeingResponse/Suspension/Duration | AssessmentTask/PointsPossible | AssessmentTask/Weight | AssessmentTask/MaxAttemptsAllowed" mode="value">
    <xsl:apply-templates select="."/>
  </xsl:template>

  <xsl:template match="* | @*" mode="attrvalue">
    <xsl:text>"</xsl:text><xsl:apply-templates select="."/><xsl:text>"</xsl:text>
  </xsl:template>

  <!-- numeric or boolean attribute -->
  <xsl:template match="NEVERMATCH" mode="attrvalue">
    <xsl:apply-templates select="."/>
  </xsl:template>

  <!-- simple content with attribute -->
  <xsl:template match="/PersonInvolvement/PersonRefId | /PersonInvolvement/PersonRefId" mode="detect">
    <xsl:text>"</xsl:text><xsl:value-of select="name()"/>" : <xsl:apply-templates select="." mode="obj-content" />
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
  </xsl:template>

  <!-- list -->
  <xsl:template match="/AddressList/Address | /StatisticalAreaList/StatisticalArea | /CommunicationChannelList/Channel | /ContactList/Contact | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /EmailList/Email | /LocationList/Location | /StatisticalAreaList/StatisticalArea | /PhoneNumberList/PhoneNumber | /RelatedOrganisationList/RelatedOrganisation | /NewEntrantPolicyList/EnactedPolicy | /DefinitionList/Definition | /SchoolYearList/SchoolYear | /YearLevelList/YearLevel | /SubjectAreaList/SubjectArea | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /CommunicationChannelList/Channel | /ContactList/Contact | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /EmailList/Email | /LocationList/Location | /StatisticalAreaList/StatisticalArea | /PhoneNumberList/PhoneNumber | /RelatedOrganisationList/RelatedOrganisation | /OtherNames/Name | /CountriesOfCitizenship/Country | /LanguageList/Language | /EthnicityList/Ethnicity | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /HouseholdContactInfoList/HouseholdContactInfo | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /StaffSubjectList/StaffSubject | /YearLevels/YearLevel | /OtherNames/Name | /CountriesOfCitizenship/Country | /LanguageList/Language | /EthnicityList/Ethnicity | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /HouseholdContactInfoList/HouseholdContactInfo | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /OtherNames/Name | /CountriesOfCitizenship/Country | /LanguageList/Language | /EthnicityList/Ethnicity | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /HouseholdContactInfoList/HouseholdContactInfo | /AddressList/Address | /StatisticalAreaList/StatisticalArea | /EmailList/Email | /PhoneNumberList/PhoneNumber | /HouseholdList/HouseholdId | /StudentList/Student | /TeacherList/StaffMember | /SubjectAreaList/SubjectArea | /YearLevelList/YearLevel | /SubjectAreaList/SubjectArea | /YearLevelList/YearLevel | /LanguageOfInstructionList/Language | /LearningStandardList/LearningStandard | /SubjectAreas/SubjectArea | /RelatedLearningStandardList/RelatedLearningStandard | /SubjectAreas/SubjectArea | /RelatedLearningStandardList/RelatedLearningStandard | /SchoolEnrolmentList/SchoolEnrolment | /LanguageOfInstructionList/Language | /SubjectChoiceList/StudentSubjectChoice | /CourseChoiceList/StudentCourseChoice | /InterventionList/Intervention | /AttendanceTimes/AttendanceTime | /PeriodAttendances/PeriodAttendance | /SubjectAreaList/SubjectArea | /TeacherList/StaffMember | /RoomList/RoomId | /MedicationList/Medication | /DocumentList/Document | /WellbeingEventCategoryList/WellbeingEventCategory | /WellbeingEventSubCategoryList/WellbeingEventSubCategory | /PersonInvolvementList/PersonInvolvement | /FollowUpActionList/FollowUpAction | /DocumentList/Document | /PersonInvolvementList/PersonInvolvement | /WithdrawalTimeList/Withdrawal | /PlanRequiredList/Plan | /DocumentList/Document | /DocumentList/Document | /StudentList/Student | /SubAssessmentTaskList/AssessmentTaskRefId | /PrerequisiteList/Prerequisite | /LearningStandardList/LearningStandard | /SpecialAssessmentConditionExclusionList/SpecialAssessmentCondition | /MarkerList/StaffMember | /ResultScoreList/ResultScore | /SpecialAssessmentConditionList/SpecialAssessmentCondition" mode="detect">
  <xsl:if test="count(preceding-sibling::*) = 0">
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
    <xsl:if test="count(following-sibling::*) &gt; 0">, </xsl:if>
    <xsl:if test="count(following-sibling::*) = 0"><xsl:text>]</xsl:text></xsl:if>
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
  <xsl:template match="/PersonInvolvement/PersonRefId | /PersonInvolvement/PersonRefId" mode="obj-content">
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
                <xsl:choose>
                        <xsl:when test="normalize-space($value) != $value">
                                <xsl:call-template name="encode">
                                        <xsl:with-param name="input" select="$value"/>
                                </xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                                <xsl:value-of select="$value"/>
                        </xsl:otherwise>
                </xsl:choose>
  </xsl:template>

  <xsl:template match="node/@TEXT | text()" name="removeBreaks" priority="10">
    <xsl:call-template name="encode-value">
      <xsl:with-param name="value" select="." />
    </xsl:call-template>
  </xsl:template>

</xsl:stylesheet>
