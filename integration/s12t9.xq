declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-12.xml')/*
return {
  for $rating in $user/*/tns:photo/tns:rating
  return {
  '"',{$rating/../tns:photoID/text()},'"',',',
  '"',{$rating/tns:raterID/text()},'"',',',
  '"',{$rating/tns:score/text()},'"',';'
  } 
}
)