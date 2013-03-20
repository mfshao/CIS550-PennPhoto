declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
for $student in $user/tns:student
  return {
  '"',{'stu'},{$student/tns:accountID/text()},'"',',',
  '"',{$student/tns:accountID/text()},'"',',',
  '"',{'N/A'},'"',',',
  '"',{'0'},'"',',',
  '"',{'staff'},{$student/tns:advisor/text()},'"',',',
  '"',{'0'},'"',';'
  } 
}
)