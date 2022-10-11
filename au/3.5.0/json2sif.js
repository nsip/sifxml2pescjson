let X2JS = require('x2js');
const fs = require("fs");
const js = fs.readFileSync(0, "utf-8");
var dot = require('dot-object');

var attrpaths = new Object;
attrpaths["Activity"] = ["Activity.RefId","Activity.Evaluation.EvaluationType"];
attrpaths["AggregateCharacteristicInfo"] = ["AggregateCharacteristicInfo.RefId"];
attrpaths["AggregateStatisticFact"] = ["AggregateStatisticFact.RefId"];
attrpaths["AggregateStatisticInfo"] = ["AggregateStatisticInfo.RefId","AggregateStatisticInfo.Location.Type"];
attrpaths["CalendarDate"] = ["CalendarDate.CalendarDateRefId"];
attrpaths["CalendarSummary"] = ["CalendarSummary.RefId"];
attrpaths["EquipmentInfo"] = ["EquipmentInfo.RefId"];
attrpaths["GradingAssignment"] = ["GradingAssignment.RefId"];
attrpaths["GradingAssignmentScore"] = ["GradingAssignmentScore.RefId"];
attrpaths["Identity"] = ["Identity.RefId"];
attrpaths["LEAInfo"] = ["LEAInfo.RefId","LEAInfo.LEAContactList.LEAContact.ContactInfo.Name.Type","LEAInfo.LEAContactList.LEAContact.ContactInfo.Address.Type","LEAInfo.LEAContactList.LEAContact.ContactInfo.Address.Role","LEAInfo.LEAContactList.LEAContact.ContactInfo.Address.MapReference.Type","LEAInfo.LEAContactList.LEAContact.ContactInfo.PhoneNumberList.PhoneNumber.Type","LEAInfo.PhoneNumberList.PhoneNumber.Type","LEAInfo.AddressList.Address.Type","LEAInfo.AddressList.Address.Role","LEAInfo.AddressList.Address.MapReference.Type"];
attrpaths["LearningResource"] = ["LearningResource.RefId","LearningResource.Contacts.Contact.Name.Type","LearningResource.Contacts.Contact.Address.Type","LearningResource.Contacts.Contact.Address.Role","LearningResource.Contacts.Contact.Address.MapReference.Type","LearningResource.Contacts.Contact.PhoneNumber.Type","LearningResource.Evaluations.Evaluation.RefId","LearningResource.Evaluations.Evaluation.Name.Type"];
attrpaths["LearningResourcePackage"] = ["LearningResourcePackage.RefId","LearningResourcePackage.Reference.MIMEType","LearningResourcePackage.Reference.Description"];
attrpaths["LearningStandardDocument"] = ["LearningStandardDocument.RefId","LearningStandardDocument.RichDescription.RefId","LearningStandardDocument.RichDescription.Reference.MIMEType","LearningStandardDocument.RichDescription.Reference.Description"];
attrpaths["LearningStandardItem"] = ["LearningStandardItem.RefId"];
attrpaths["MarkValueInfo"] = ["MarkValueInfo.RefId"];
attrpaths["PersonPicture"] = ["PersonPicture.RefId"];
attrpaths["PersonPrivacyObligationDocument"] = ["PersonPrivacyObligationDocument.RefId"];
attrpaths["PersonalisedPlan"] = ["PersonalisedPlan.RefId"];
attrpaths["ResourceBooking"] = ["ResourceBooking.RefId"];
attrpaths["RoomInfo"] = ["RoomInfo.RefId","RoomInfo.PhoneNumber.Type"];
attrpaths["ScheduledActivity"] = ["ScheduledActivity.RefId","ScheduledActivity.AddressList.Address.Type","ScheduledActivity.AddressList.Address.Role","ScheduledActivity.AddressList.Address.MapReference.Type"];
attrpaths["SchoolCourseInfo"] = ["SchoolCourseInfo.RefId"];
attrpaths["SchoolInfo"] = ["SchoolInfo.RefId","SchoolInfo.PrincipalInfo.ContactName.Type","SchoolInfo.PrincipalInfo.PhoneNumberList.PhoneNumber.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Name.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Address.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Address.Role","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Address.MapReference.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.PhoneNumberList.PhoneNumber.Type","SchoolInfo.AddressList.Address.Type","SchoolInfo.AddressList.Address.Role","SchoolInfo.AddressList.Address.MapReference.Type","SchoolInfo.PhoneNumberList.PhoneNumber.Type"];
attrpaths["SchoolPrograms"] = ["SchoolPrograms.RefId"];
attrpaths["SectionInfo"] = ["SectionInfo.RefId","SectionInfo.SchoolCourseInfoOverride.Override"];
attrpaths["SessionInfo"] = ["SessionInfo.RefId"];
attrpaths["StaffAssignment"] = ["StaffAssignment.RefId"];
attrpaths["StaffPersonal"] = ["StaffPersonal.RefId","StaffPersonal.PersonInfo.Name.Type","StaffPersonal.PersonInfo.OtherNames.Name.Type","StaffPersonal.PersonInfo.AddressList.Address.Type","StaffPersonal.PersonInfo.AddressList.Address.Role","StaffPersonal.PersonInfo.AddressList.Address.MapReference.Type","StaffPersonal.PersonInfo.PhoneNumberList.PhoneNumber.Type","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Type","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Role","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.MapReference.Type","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.PhoneNumberList.PhoneNumber.Type"];
attrpaths["StudentActivityInfo"] = ["StudentActivityInfo.RefId","StudentActivityInfo.Location.Type"];
attrpaths["StudentActivityParticipation"] = ["StudentActivityParticipation.RefId"];
attrpaths["StudentAttendanceSummary"] = ["StudentAttendanceSummary.StudentAttendanceSummaryRefId"];
attrpaths["StudentAttendanceTimeList"] = ["StudentAttendanceTimeList.RefId"];
attrpaths["StudentContactPersonal"] = ["StudentContactPersonal.RefId","StudentContactPersonal.PersonInfo.Name.Type","StudentContactPersonal.PersonInfo.OtherNames.Name.Type","StudentContactPersonal.PersonInfo.AddressList.Address.Type","StudentContactPersonal.PersonInfo.AddressList.Address.Role","StudentContactPersonal.PersonInfo.AddressList.Address.MapReference.Type","StudentContactPersonal.PersonInfo.PhoneNumberList.PhoneNumber.Type","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Type","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Role","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.MapReference.Type","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.PhoneNumberList.PhoneNumber.Type"];
attrpaths["StudentContactRelationship"] = ["StudentContactRelationship.StudentContactRelationshipRefId"];
attrpaths["StudentDailyAttendance"] = ["StudentDailyAttendance.RefId"];
attrpaths["StudentGrade"] = ["StudentGrade.RefId"];
attrpaths["StudentParticipation"] = ["StudentParticipation.RefId"];
attrpaths["StudentPeriodAttendance"] = ["StudentPeriodAttendance.RefId","StudentPeriodAttendance.AuditInfo.CreationUser.Type"];
attrpaths["StudentPersonal"] = ["StudentPersonal.RefId","StudentPersonal.PersonInfo.Name.Type","StudentPersonal.PersonInfo.OtherNames.Name.Type","StudentPersonal.PersonInfo.AddressList.Address.Type","StudentPersonal.PersonInfo.AddressList.Address.Role","StudentPersonal.PersonInfo.AddressList.Address.MapReference.Type","StudentPersonal.PersonInfo.PhoneNumberList.PhoneNumber.Type","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Type","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Role","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.MapReference.Type","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.PhoneNumberList.PhoneNumber.Type"];
attrpaths["StudentSchoolEnrollment"] = ["StudentSchoolEnrollment.RefId"];
attrpaths["StudentScoreJudgementAgainstStandard"] = ["StudentScoreJudgementAgainstStandard.RefId"];
attrpaths["StudentSectionEnrollment"] = ["StudentSectionEnrollment.RefId"];
attrpaths["TeachingGroup"] = ["TeachingGroup.RefId","TeachingGroup.StudentList.TeachingGroupStudent.Name.Type","TeachingGroup.TeacherList.TeachingGroupTeacher.Name.Type"];
attrpaths["TermInfo"] = ["TermInfo.RefId"];
attrpaths["TimeTable"] = ["TimeTable.RefId"];
attrpaths["TimeTableCell"] = ["TimeTableCell.RefId"];
attrpaths["TimeTableContainer"] = ["TimeTableContainer.RefId","TimeTableContainer.TeachingGroupScheduleList.StudentList.TeachingGroupStudent.Name.Type","TimeTableContainer.TeachingGroupScheduleList.TeacherList.TeachingGroupTeacher.Name.Type"];
attrpaths["TimeTableSubject"] = ["TimeTableSubject.RefId"];
attrpaths["WellbeingAlert"] = ["WellbeingAlert.RefId"];
attrpaths["WellbeingAppeal"] = ["WellbeingAppeal.RefId"];
attrpaths["WellbeingCharacteristic"] = ["WellbeingCharacteristic.RefId"];
attrpaths["WellbeingEvent"] = ["WellbeingEvent.RefId"];
attrpaths["WellbeingPersonLink"] = ["WellbeingPersonLink.RefId"];
attrpaths["WellbeingResponse"] = ["WellbeingResponse.RefId"];
attrpaths["AddressCollection"] = ["AddressCollection.RefId","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.EntityContact.Name.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.EntityContact.Address.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.EntityContact.Address.Role","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.EntityContact.Address.MapReference.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.EntityContact.PhoneNumber.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.StudentAddress.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.StudentAddress.Role","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.StudentAddress.MapReference.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent1.ParentName.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent1.ParentAddress.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent1.ParentAddress.Role","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent1.ParentAddress.MapReference.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent2.ParentName.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent2.ParentAddress.Type","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent2.ParentAddress.Role","AddressCollection.AddressCollectionReportingList.AddressCollectionReporting.AddressCollectionStudentList.AddressCollectionStudent.Parent2.ParentAddress.MapReference.Type"];
attrpaths["CensusCollection"] = ["CensusCollection.RefId","CensusCollection.CensusReportingList.CensusReporting.EntityContact.Name.Type","CensusCollection.CensusReportingList.CensusReporting.EntityContact.Address.Type","CensusCollection.CensusReportingList.CensusReporting.EntityContact.Address.Role","CensusCollection.CensusReportingList.CensusReporting.EntityContact.Address.MapReference.Type","CensusCollection.CensusReportingList.CensusReporting.EntityContact.PhoneNumber.Type"];
attrpaths["ChargedLocationInfo"] = ["ChargedLocationInfo.RefId","ChargedLocationInfo.AddressList.Address.Type","ChargedLocationInfo.AddressList.Address.Role","ChargedLocationInfo.AddressList.Address.MapReference.Type","ChargedLocationInfo.PhoneNumberList.PhoneNumber.Type"];
attrpaths["CollectionRound"] = ["CollectionRound.RefId"];
attrpaths["CollectionStatus"] = ["CollectionStatus.RefId"];
attrpaths["Debtor"] = ["Debtor.RefId","Debtor.AddressList.Address.Type","Debtor.AddressList.Address.Role","Debtor.AddressList.Address.MapReference.Type"];
attrpaths["FinancialAccount"] = ["FinancialAccount.RefId"];
attrpaths["FinancialQuestionnaireCollection"] = ["FinancialQuestionnaireCollection.RefId","FinancialQuestionnaireCollection.FQReportingList.FQReporting.EntityContact.Name.Type","FinancialQuestionnaireCollection.FQReportingList.FQReporting.EntityContact.Address.Type","FinancialQuestionnaireCollection.FQReportingList.FQReporting.EntityContact.Address.Role","FinancialQuestionnaireCollection.FQReportingList.FQReporting.EntityContact.Address.MapReference.Type","FinancialQuestionnaireCollection.FQReportingList.FQReporting.EntityContact.PhoneNumber.Type"];
attrpaths["Invoice"] = ["Invoice.RefId"];
attrpaths["Journal"] = ["Journal.RefId"];
attrpaths["LibraryPatronStatus"] = ["LibraryPatronStatus.RefId","LibraryPatronStatus.PatronName.Type","LibraryPatronStatus.TransactionList.Transaction.ItemInfo.Type","LibraryPatronStatus.TransactionList.Transaction.FineInfoList.FineInfo.Type","LibraryPatronStatus.TransactionList.Transaction.HoldInfoList.HoldInfo.Type","LibraryPatronStatus.MessageList.Message.Priority","LibraryPatronStatus.MessageList.Message.PriorityCodeset"];
attrpaths["NAPCodeFrame"] = ["NAPCodeFrame.RefId"];
attrpaths["NAPEventStudentLink"] = ["NAPEventStudentLink.RefId"];
attrpaths["NAPStudentResponseSet"] = ["NAPStudentResponseSet.RefId"];
attrpaths["NAPTest"] = ["NAPTest.RefId"];
attrpaths["NAPTestItem"] = ["NAPTestItem.RefId"];
attrpaths["NAPTestScoreSummary"] = ["NAPTestScoreSummary.RefId"];
attrpaths["NAPTestlet"] = ["NAPTestlet.RefId"];
attrpaths["PaymentReceipt"] = ["PaymentReceipt.RefId"];
attrpaths["PurchaseOrder"] = ["PurchaseOrder.RefId"];
attrpaths["StudentAttendanceCollection"] = ["StudentAttendanceCollection.RefId","StudentAttendanceCollection.StudentAttendanceCollectionReportingList.StudentAttendanceCollectionReporting.EntityContact.Name.Type","StudentAttendanceCollection.StudentAttendanceCollectionReportingList.StudentAttendanceCollectionReporting.EntityContact.Address.Type","StudentAttendanceCollection.StudentAttendanceCollectionReportingList.StudentAttendanceCollectionReporting.EntityContact.Address.Role","StudentAttendanceCollection.StudentAttendanceCollectionReportingList.StudentAttendanceCollectionReporting.EntityContact.Address.MapReference.Type","StudentAttendanceCollection.StudentAttendanceCollectionReportingList.StudentAttendanceCollectionReporting.EntityContact.PhoneNumber.Type"];
attrpaths["StudentDataTransferNote"] = ["StudentDataTransferNote.RefId","StudentDataTransferNote.Name.Type","StudentDataTransferNote.DepartureSchool.SchoolContactList.SchoolContact.ContactInfo.Name.Type","StudentDataTransferNote.DepartureSchool.SchoolContactList.SchoolContact.ContactInfo.Address.Type","StudentDataTransferNote.DepartureSchool.SchoolContactList.SchoolContact.ContactInfo.Address.Role","StudentDataTransferNote.DepartureSchool.SchoolContactList.SchoolContact.ContactInfo.Address.MapReference.Type","StudentDataTransferNote.DepartureSchool.SchoolContactList.SchoolContact.ContactInfo.PhoneNumberList.PhoneNumber.Type","StudentDataTransferNote.OtherNames.Name.Type"];
attrpaths["VendorInfo"] = ["VendorInfo.RefId","VendorInfo.ContactInfo.Name.Type","VendorInfo.ContactInfo.Address.Type","VendorInfo.ContactInfo.Address.Role","VendorInfo.ContactInfo.Address.MapReference.Type","VendorInfo.ContactInfo.PhoneNumberList.PhoneNumber.Type"];

/* this is inefficent */
function attributes(newobj) {
  var tgt = dot.dot(newobj); /* get all paths within the JSON object */
  var object = Object.keys(tgt)[0].replace(/\..*$/, ""); /* get name of object */
  for(var i=0; i< attrpaths[object].length; i++) {
      for (var key in tgt) {
      /* brute force lookup: compare all paths in the object to all 
        complex content attribute paths known for the object */
          var key_stripped;
          key_stripped = key.replace(/\.[0-9]+/g, "");
          /* we don't have wildcard array access (cf. doc-wild) + path rename command in the same JS library.
             So forced to generate paths stripped of array indexes,
             to match registered complex content attribute paths  */
          if(key_stripped == attrpaths[object][i]) {
              /* indicate to x2js that this is an XML attribute */
              dot.move(key, key.replace(/\.([^.]+)$/, "._$1"), newobj);
          }
      }
  }

    /* value key is used when there are attributes on simple content.
       Rearrange attributes if there is a value key */
    var paths = [];
    for (var key in tgt) {
        if(key.endsWith(".value")) {
            paths.push(key.replace(/\.value/, ""));
        }
    }
      for(var i=0; i<paths.length; i++) {
          for(var key in tgt) {
              if (key.startsWith(paths[i])) {
                  if (key == paths[i] + ".value") {
                     /* x2js counterpart to PESC JSON "value" key */
                      dot.move(key, paths[i] + ".__text", newobj);
                  } else if (!key.replace(paths[i] + ".", "").includes(".")) {
                     /* indicate in x2js that all sibling keys to "value" are XML attributes */
                    dot.move(key, key.replace(/\.([^.]+)$/, "._$1"), newobj);
                  }
              }
          }
      }
      return newobj;
}

var x = new X2JS({stripWhitespaces : false});
var json = JSON.parse(js);
/* presupposes we are processing array of JSON objects */
for(var i=0; i<json.length; i++) {
    newobj = json[i];
    newobj = attributes(newobj);
    var xml = x.js2xml(newobj);
    console.log(xml);
}
