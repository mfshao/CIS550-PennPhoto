declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return 
{ for $professor in $user/tns:professor
  return {
  '"',{'staff'},{$professor/tns:accountID/text()},'"',',',
  '"',{$professor/tns:accountID/text()},'"',',',
  '"',{'N/A'},'"',',',
  '"',{'N/A'},'"',';'
  } 
}
)