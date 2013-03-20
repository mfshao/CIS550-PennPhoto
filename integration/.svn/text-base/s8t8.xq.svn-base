string-join(
let $user := doc('pennphoto-8.xml')/*
return {
  for $photo in $user/*/photo
  return {
  '"',{$photo/photoId/text()},'"',',',
  '"',{$photo/../userId/text()},'"',',',
  '"',{$photo/url/text()},'"',';'
  } 
}
)