declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return 
{ for $professor in $user/tns:professor
  return {
  '"',{'staff'},{$professor/tns:id/text()},'"',',',
  '"',{$professor/tns:id/text()},'"',',',
  '"',{'N/A'},'"',',',
  '"',{'N/A'},'"',';'
  } 
}
)