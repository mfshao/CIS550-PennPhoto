string-join(
let $user := doc('pennphoto-8.xml')/*
return {
for $student in $user/student
  return {
  '"',{'stu'},{$student/userId/text()},'"',',',
  '"',{$student/userId/text()},'"',',',
  '"',{$student/major/text()},'"',',',
  '"',{$student/GPA/text()},'"',',',
  '"',{'staff'},{$student/advisor/text()},'"',',',
  '"',{'0'},'"',';'
  } 
}
)