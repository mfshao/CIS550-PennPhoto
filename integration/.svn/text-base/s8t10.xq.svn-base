string-join(
let $user := doc('pennphoto-8.xml')/*
return {
  for $tag in $user/*/photo/tag
  return {
  '"',{$tag/../photoId/text()},'"',',',
  '"',{$tag/text()},'"',';'
  } 
}
)