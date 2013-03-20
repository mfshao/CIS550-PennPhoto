declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
  for $interest in $user/*/tns:interest
  return {
  '"',{$interest/../tns:accountID/text()},'"',',',
  '"',{$interest/text()},'"',';'
  } 
}
)