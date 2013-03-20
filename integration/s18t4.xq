declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
  for $school in $user/*/tns:academic_institution
  return {
  '"',{$school/text()},'"',',',
  '"',{$school/../tns:id/text()},'"',';'
  } 
}
)