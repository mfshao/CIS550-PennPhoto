string-join(
let $user := doc('pennphoto-8.xml')/*
return 
{ for $professor in $user/professor
  return {
  '"',{'staff'},{$professor/userId/text()},'"',',',
  '"',{$professor/userId/text()},'"',',',
  '"',{$professor/researchArea/text()},'"',',',
  '"',{'N/A'},'"',';'
  } 
}
)