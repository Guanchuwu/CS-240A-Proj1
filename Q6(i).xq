for $deptno in /departments/department/deptno
    let $deptnos := /employees/employee/deptno[.=$deptno]
    let $dates   := 
      for $date in distinct-values( ($deptnos/@tstart, $deptnos/@tend) )
      order by $date
      return $date
    let  $num := count( $dates )
    return
      <result deptno = "{$deptno}">
      {
        for $tstart at $pos in $dates 
          let $ans := $deptnos[@tstart <= $tstart and $tstart < @tend], $tend := $dates[$pos+1]
        where $pos < $num
        return
          <count tstart="{$tstart}" tend="{$tend}">{count($ans)}</count>
      } 
      </result>