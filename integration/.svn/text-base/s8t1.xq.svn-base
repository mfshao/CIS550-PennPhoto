string-join(
let $user := doc('pennphoto-8.xml')/*
return {
{ for $student in $user/student
  return {
  '"',{$student/userId/text()},'"',',',
  '"',{$student/firstName/text()},'"',',',
  '"',{$student/lastName/text()},'"',',',
  '"',{$student/email/text()},'"',',',
  '"',{$student/birthday/text()},'"',',',
  '"',{$student/gender/text()},'"',',',
  '"',{$student/address/text()},'"',',',
  '"',{'S'},'"',',',
  '"',{$student/password/text()},'"',';'
  }
},
{ for $professor in $user/professor
  return {
  '"',{$professor/userId/text()},'"',',',
  '"',{$professor/firstName/text()},'"',',',
  '"',{$professor/lastName/text()},'"',',',
  '"',{$professor/email/text()},'"',',',
  '"',{$professor/birthday/text()},'"',',',
  '"',{$professor/gender/text()},'"',',',
  '"',{$professor/address/text()},'"',',',
  '"',{'P'},'"',',',
  '"',{$professor/password/text()},'"',';'
  }
}}
)