string-join(
let $user := doc('pennphoto-8.xml')/*
return {
  for $interest in $user/*/interest
  return {
  '"',{$interest/../userId/text()},'"',',',
  '"',{$interest/text()},'"',';'
  } 
}
)