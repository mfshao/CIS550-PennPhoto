declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
  for $friend in $user/*/tns:circle/tns:friend
  return {
  '"',{$friend/../tns:circleID/text()},'"',',',
  '"',{$friend/text()},'"',';'
  } 
}
)