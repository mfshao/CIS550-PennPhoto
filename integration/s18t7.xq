declare namespace tns="http://www.example.org/pennphoto";
string-join(
let $user := doc('pennphoto-18.xml')/*
return {
  for $circle at $pos in $user/*/tns:circle
  return {
    for $friend in $circle/tns:containsFriend
    return {
      '"',{fn:string(18000 + $pos)},'"',',',
      '"',{$friend/tns:friend_id/text()},';'
    }
  } 
}
)