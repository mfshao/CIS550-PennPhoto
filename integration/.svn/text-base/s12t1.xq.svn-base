declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
{ for $student in $user/tns:student
  return {
  '"',{$student/tns:accountID/text()},'"',',',
  '"',{$student/tns:fname/text()},'"',',',
  '"',{$student/tns:lname/text()},'"',',',
  '"',{$student/tns:email/text()},'"',',',
  '"',{fn:substring($student/tns:birthDate/text(),7,4)},{'-'},{fn:substring($student/tns:birthDate/text(),1,2)},{'-'},{fn:substring($student/tns:birthDate/text(),4,2)},'"',',',
  '"',{$student/tns:gender/text()},'"',',',
  '"',{$student/tns:address/text()},'"',',',
  '"',{'S'},'"',',',
  '"',{$student/tns:password/text()},'"',';'
}},
{ for $professor in $user/tns:professor
  return {
  '"',{$professor/tns:accountID/text()},'"',',',
  '"',{$professor/tns:fname/text()},'"',',',
  '"',{$professor/tns:lname/text()},'"',',',
  '"',{$professor/tns:email/text()},'"',',',
  '"',{fn:substring($professor/tns:birthDate/text(),7,4)},{'-'},{fn:substring($professor/tns:birthDate/text(),1,2)},{'-'},{fn:substring($professor/tns:birthDate/text(),4,2)},'"',',',
  '"',{$professor/tns:gender/text()},'"',',',
  '"',{$professor/tns:address/text()},'"',',',
  '"',{'P'},'"',',',
  '"',{$professor/tns:password/text()},'"',';' 
}}})