let X2JS = require('x2js');
const fs = require("fs");
const js = fs.readFileSync("/dev/stdin", "utf-8");
var dot = require('dot-object');

var attrpaths = ["Activity.RefId","Activity.Evaluation.EvaluationType","AggregateCharacteristicInfo.RefId","AggregateStatisticFact.RefId","AggregateStatisticInfo.RefId","AggregateStatisticInfo.Location.Type","CalendarDate.CalendarDateRefId","CalendarSummary.RefId","EquipmentInfo.RefId","GradingAssignment.RefId","GradingAssignmentScore.RefId","Identity.RefId","LEAInfo.RefId","LEAInfo.LEAContactList.LEAContact.ContactInfo.Name.Type","LEAInfo.LEAContactList.LEAContact.ContactInfo.Address.Type","LEAInfo.LEAContactList.LEAContact.ContactInfo.Address.Role","LEAInfo.LEAContactList.LEAContact.ContactInfo.Address.MapReference.Type","LEAInfo.LEAContactList.LEAContact.ContactInfo.PhoneNumberList.PhoneNumber.Type","LEAInfo.PhoneNumberList.PhoneNumber.Type","LEAInfo.AddressList.Address.Type","LEAInfo.AddressList.Address.Role","LEAInfo.AddressList.Address.MapReference.Type","LearningResource.RefId","LearningResource.Contacts.Contact.Name.Type","LearningResource.Contacts.Contact.Address.Type","LearningResource.Contacts.Contact.Address.Role","LearningResource.Contacts.Contact.Address.MapReference.Type","LearningResource.Contacts.Contact.PhoneNumber.Type","LearningResource.Evaluations.Evaluation.RefId","LearningResource.Evaluations.Evaluation.Name.Type","LearningResourcePackage.RefId","LearningResourcePackage.Reference.MIMEType","LearningResourcePackage.Reference.Description","LearningStandardDocument.RefId","LearningStandardDocument.RichDescription.Reference.MIMEType","LearningStandardDocument.RichDescription.Reference.Description","LearningStandardItem.RefId","MarkValueInfo.RefId","PersonPicture.RefId","PersonalisedPlan.RefId","ReportAuthorityInfo.RefId","ReportAuthorityInfo.ContactInfo.Name.Type","ReportAuthorityInfo.ContactInfo.Address.Type","ReportAuthorityInfo.ContactInfo.Address.Role","ReportAuthorityInfo.ContactInfo.Address.MapReference.Type","ReportAuthorityInfo.ContactInfo.PhoneNumberList.PhoneNumber.Type","ReportAuthorityInfo.Address.Type","ReportAuthorityInfo.Address.Role","ReportAuthorityInfo.Address.MapReference.Type","ReportAuthorityInfo.PhoneNumber.Type","ResourceBooking.RefId","ResourceUsage.RefId","RoomInfo.RefId","RoomInfo.PhoneNumber.Type","ScheduledActivity.RefId","ScheduledActivity.AddressList.Address.Type","ScheduledActivity.AddressList.Address.Role","ScheduledActivity.AddressList.Address.MapReference.Type","SchoolCourseInfo.RefId","SchoolInfo.RefId","SchoolInfo.PrincipalInfo.ContactName.Type","SchoolInfo.PrincipalInfo.PhoneNumberList.PhoneNumber.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Name.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Address.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Address.Role","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.Address.MapReference.Type","SchoolInfo.SchoolContactList.SchoolContact.ContactInfo.PhoneNumberList.PhoneNumber.Type","SchoolInfo.AddressList.Address.Type","SchoolInfo.AddressList.Address.Role","SchoolInfo.AddressList.Address.MapReference.Type","SchoolInfo.PhoneNumberList.PhoneNumber.Type","SchoolPrograms.RefId","SectionInfo.RefId","SectionInfo.SchoolCourseInfoOverride.Override","SessionInfo.RefId","StaffAssignment.RefId","StaffPersonal.RefId","StaffPersonal.PersonInfo.Name.Type","StaffPersonal.PersonInfo.OtherNames.Name.Type","StaffPersonal.PersonInfo.AddressList.Address.Type","StaffPersonal.PersonInfo.AddressList.Address.Role","StaffPersonal.PersonInfo.AddressList.Address.MapReference.Type","StaffPersonal.PersonInfo.PhoneNumberList.PhoneNumber.Type","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Type","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Role","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.MapReference.Type","StaffPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.PhoneNumberList.PhoneNumber.Type","StudentActivityInfo.RefId","StudentActivityInfo.Location.Type","StudentActivityParticipation.RefId","StudentAttendanceSummary.StudentAttendanceSummaryRefId","StudentAttendanceTimeList.RefId","StudentContactPersonal.RefId","StudentContactPersonal.PersonInfo.Name.Type","StudentContactPersonal.PersonInfo.OtherNames.Name.Type","StudentContactPersonal.PersonInfo.AddressList.Address.Type","StudentContactPersonal.PersonInfo.AddressList.Address.Role","StudentContactPersonal.PersonInfo.AddressList.Address.MapReference.Type","StudentContactPersonal.PersonInfo.PhoneNumberList.PhoneNumber.Type","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Type","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Role","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.MapReference.Type","StudentContactPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.PhoneNumberList.PhoneNumber.Type","StudentContactRelationship.StudentContactRelationshipRefId","StudentDailyAttendance.RefId","StudentGrade.RefId","StudentParticipation.RefId","StudentPeriodAttendance.RefId","StudentPeriodAttendance.AuditInfo.CreationUser.Type","StudentPersonal.RefId","StudentPersonal.PersonInfo.Name.Type","StudentPersonal.PersonInfo.OtherNames.Name.Type","StudentPersonal.PersonInfo.AddressList.Address.Type","StudentPersonal.PersonInfo.AddressList.Address.Role","StudentPersonal.PersonInfo.AddressList.Address.MapReference.Type","StudentPersonal.PersonInfo.PhoneNumberList.PhoneNumber.Type","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Type","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.Role","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.AddressList.Address.MapReference.Type","StudentPersonal.PersonInfo.HouseholdContactInfoList.HouseholdContactInfo.PhoneNumberList.PhoneNumber.Type","StudentSchoolEnrollment.RefId","StudentSectionEnrollment.RefId","SystemRole.RefId","SystemRole.SystemContextList.SystemContext.SystemId","SystemRole.SystemContextList.SystemContext.RoleList.Role.RoleId","TeachingGroup.RefId","TeachingGroup.StudentList.TeachingGroupStudent.Name.Type","TeachingGroup.TeacherList.TeachingGroupTeacher.Name.Type","TermInfo.RefId","TimeTable.RefId","TimeTableCell.RefId","TimeTableSubject.RefId","WellbeingAlert.RefId","WellbeingAppeal.RefId","WellbeingCharacteristic.RefId","WellbeingEvent.RefId","WellbeingResponse.RefId","ChargedLocationInfo.RefId","ChargedLocationInfo.AddressList.Address.Type","ChargedLocationInfo.AddressList.Address.Role","ChargedLocationInfo.AddressList.Address.MapReference.Type","ChargedLocationInfo.PhoneNumberList.PhoneNumber.Type","Debtor.RefId","Debtor.AddressList.Address.Type","Debtor.AddressList.Address.Role","Debtor.AddressList.Address.MapReference.Type","FinancialAccount.RefId","Invoice.RefId","Journal.RefId","NAPCodeFrame.RefId","NAPEventStudentLink.RefId","NAPStudentResponseSet.RefId","NAPTest.RefId","NAPTestItem.RefId","NAPTestScoreSummary.RefId","NAPTestlet.RefId","PaymentReceipt.RefId","PurchaseOrder.RefId","VendorInfo.RefId","VendorInfo.ContactInfo.Name.Type","VendorInfo.ContactInfo.Address.Type","VendorInfo.ContactInfo.Address.Role","VendorInfo.ContactInfo.Address.MapReference.Type","VendorInfo.ContactInfo.PhoneNumberList.PhoneNumber.Type"];
/* obvious future optimisation: separate array for each object */

/* this is monstrously inefficent */
function attributes(newobj) {
  var tgt = dot.dot(newobj); /* get all paths of object */
  for (var key in tgt) {
    var key_stripped;
    key_stripped = key.replace(/.[0-9]+/g, "");
    /* we don't have wildcard array access (cf. doc-wild) + move property in the same library */
    for(var i=0; i< attrpaths.length; i++) {
      if(key_stripped == attrpaths[i]) {
        dot.move(key, key.replace(/.([^.]+)$/, "._$1"), newobj);
      }
    }
  }

  var paths = [];
  for (var key in tgt) {
    if(key.endsWith(".value")) {
      paths.push(key.replace(/\.value/, ""));
    }
  }
  /* rearrange attributes if there is a value key */
  for(var i=0; i<paths.length; i++) {
    for(var key in tgt) {
      if (key.startsWith(paths[i])) {
        if (key == paths[i] + ".value") {
          dot.move(key, paths[i] + ".__text", newobj);
        } else if (!key.replace(paths[i] + ".", "").includes(".")) {
          dot.move(key, key.replace(/\.([^.]+)$/, "._$1"), newobj);
        }
      }
    }
  }
  return newobj;
}

var x = new X2JS();
var json = JSON.parse(js);
for(var i=0; i<json.length; i++) {
  newobj = json[i];
  newobj = attributes(newobj);
  var xml = x.js2xml(newobj);
  console.log(xml);
}
