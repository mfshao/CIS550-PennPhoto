declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
  for $school in $user/*/tns:schoolsAttended
  return {
  '"',{$school/tns:name/text()},'"',',',
  '"',{$school/../tns:accountID/text()},'"',';'
  } 
}
)