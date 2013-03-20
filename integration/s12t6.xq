declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
  for $circle in $user/*/tns:circle
  return {
  '"',{$circle/tns:circleID/text()},'"',',',
  '"',{$circle/../tns:accountID/text()},'"',',',
  '"',{$circle/tns:name/text()},'"',';'
  } 
}
)