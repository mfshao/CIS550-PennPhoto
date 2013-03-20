declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
  for $rating in $user/*/tns:photo/tns:rating
  return {
  '"',{$rating/../../tns:id/text()},{$rating/../tns:photoID/text()},'"',',',
  '"',{$rating/tns:rater/text()},'"',',',
  '"',{$rating/tns:score/text()},'"',';'
  } 
}
)