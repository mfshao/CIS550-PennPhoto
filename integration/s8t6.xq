string-join(
let $user := doc('pennphoto-8.xml')/*
return {
  for $circle in $user/*/circle
  return {
  '"',{$circle/circleId/text()},'"',',',
  '"',{$circle/../userId/text()},'"',',',
  '"',{$circle/name/text()},'"',';'
  } 
}
)