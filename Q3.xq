for $dept in /departments/department
let $result := 
  for $his in $dept/*
    let $start := $his/@tstart
    let $end := $his/@tend
    where not(compare($start, "1996-05-06")>0 or compare($end, "1994-05-01") < 0)
  return $his
return <result>{$result}</result>
