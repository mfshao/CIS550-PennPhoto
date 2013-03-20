declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
  for $tag in $user/*/tns:photo/tns:tagging
  return {
  '"',{$tag/../../tns:id/text()},{$tag/../tns:photoID/text()},'"',',',
  '"',{$tag/tns:tag/text()},'"',';'
  } 
}
)