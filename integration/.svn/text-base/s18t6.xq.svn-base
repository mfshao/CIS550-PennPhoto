declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
  for $circle at $pos in $user/*/tns:circle
  return {
  '"',{fn:string(18000 + $pos)},'"',',',
  '"',{$circle/../tns:id/text()},'"',',',
  '"',{$circle/tns:name/text()},'"',';'
  } 
}
)