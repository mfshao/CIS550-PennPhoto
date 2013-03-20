declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
for $student in $user/tns:student
  return {
  '"',{'stu'},{$student/tns:id/text()},'"',',',
  '"',{$student/tns:id/text()},'"',',',
  '"',{$student/tns:major/text()},'"',',',
  '"',{$student/tns:GPA/text()},'"',',',
  '"',{'staff'},{$student/tns:advisor/text()},'"',',',
  '"',{'0'},'"',';'
  } 
}
)