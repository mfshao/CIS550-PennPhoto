declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
  for $photo in $user/*/tns:photo
  return {
  '"',{$photo/tns:photoID/text()},'"',',',
  '"',{$photo/../tns:accountID/text()},'"',',',
  '"',{$photo/tns:url/text()},'"',';'
  } 
}
)