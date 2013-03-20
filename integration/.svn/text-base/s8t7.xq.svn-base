string-join(
let $user := doc('pennphoto-8.xml')/*
return {
  for $friend in $user/*/circle/containsFriend
  return {
  '"',{$friend/../circleId/text()},'"',',',
  '"',{$friend/text()},'"',';'
  } 
}
)