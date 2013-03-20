declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
  for $tag in $user/*/tns:photo/tns:tag
  return {
  '"',{$tag/../tns:photoID/text()},'"',',',
  '"',{$tag/tns:text/text()},'"',';'
  } 
}
)