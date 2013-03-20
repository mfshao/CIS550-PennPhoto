string-join(
let $user := doc('pennphoto-8.xml')/*
return {
  for $school in $user/*/school
  return {
  '"',{$school/text()},'"',',',
  '"',{$school/../userId/text()},'"',';'
  } 
}
)