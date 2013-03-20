string-join(
let $user := doc('pennphoto-8.xml')/*
return {
  for $rating in $user/*/photo/rating
  return {
  '"',{$rating/../photoId/text()},'"',',',
  '"',{$rating/userId/text()},'"',',',
  '"',{$rating/score/text()},'"',';'
  } 
}
)