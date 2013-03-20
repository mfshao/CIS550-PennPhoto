declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
{ for $student in $user/tns:student
  let $age := $student/tns:age
  return {
  '"',{$student/tns:id/text()},'"',',',
  '"',{$student/tns:first_name/text()},'"',',',
  '"',{$student/tns:last_name/text()},'"',',',
  '"',{$student/tns:email/text()},'"',',',
  '"',{fn:string(fn:number('2011')-fn:number($age/text()))},{'-01-01'},'"',',',
  '"',{$student/tns:gender/text()},'"',',',
  '"',{'N/A'},'"',',',
  '"',{'S'},'"',',',
  '"',{$student/tns:password/text()},'"',';'
}},
{ for $professor in $user/tns:professor
  let $age := $professor/tns:age
  return {
  '"',{$professor/tns:id/text()},'"',',',
  '"',{$professor/tns:first_name/text()},'"',',',
  '"',{$professor/tns:last_name/text()},'"',',',
  '"',{$professor/tns:email/text()},'"',',',
  '"',{fn:string(fn:number('2011')-fn:number($age/text()))},{'-01-01'},'"',',',
  '"',{$professor/tns:gender/text()},'"',',',
  '"',{'N/A'},'"',',',
  '"',{'P'},'"',',',
  '"',{$professor/tns:password/text()},'"',';' 
}}})