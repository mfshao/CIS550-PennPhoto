declare namespace tns="http://www.example.org/pennphoto";
string-join(
for $user in doc('pennphoto-18.xml')/*/*
return {
  for $visible in $user/tns:viewablePhoto
  for $photo in doc('pennphoto-18.xml')/tns:photodb/*/tns:photo
  where $visible/tns:photo_id = $photo/tns:photoID
  return {
  '"',{$photo/../tns:id/text()},{$visible/tns:photo_id/text()},'"',',',
  '"',{$visible/../tns:id/text()},'"',';'
  } 
}
)