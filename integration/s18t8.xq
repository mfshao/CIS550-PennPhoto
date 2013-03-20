declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
  for $photo in $user/*/tns:photo
  return {
  '"',{$photo/../tns:id/text()},{$photo/tns:photoID/text()},'"',',',
  '"',{$photo/../tns:id/text()},'"',',',
  '"',{$photo/tns:url/text()},'"',';'
  } 
}
)