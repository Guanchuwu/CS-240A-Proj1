let $emp := /employees/employee
let $dates :=
  for $date in distinct-values( ($emp/@tstart, $emp/@tend) )
    order by $date
    return $date
    let  $num := count( $dates )
    return
      <result>
      {
      for $tstart at $pos in $dates
        let $ans := $emp[@tstart <= $tstart and $tstart < @tend], $tend := $dates[$pos+1]
        where $pos < $num
        return
        <count tstart="{$tstart}" tend="{$tend}" count = "{count($ans)}">
        </count>
      } 
      </result>