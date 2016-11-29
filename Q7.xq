let $emp := /employees/employee[deptno='d005']
let $dates :=
	for $date in distinct-values( ($emp/salary/@tstart, $emp/salary/@tend) )
    order by $date
    return $date
    let $num := count( $dates )
    let $max-sal :=
        for $tstart at $pos in $dates
        let $sal := $emp/salary[@tstart <= $tstart and $tstart < @tend], $tend := $dates[$pos+1]
        where $pos < $num
        let $temp-max :=max($sal)
    return <sep-max-sal tstart = "{$tstart}" tend = "{$tend}" max-sal="{$temp-max}"></sep-max-sal>
let $ans :=
	for $dis-max-sal in distinct-values($max-sal/@max-sal)
	let $x := $max-sal[@max-sal=$dis-max-sal]
	let $s := '9999-12-31'
	let $e := '1900-12-31'
    let $start :=
    	for $i in $x
		let $s := min((xs:date(data($i/@tstart)),xs:date(data($s))))
	return min($s)
	let $end :=
    	for $i in $x
		let $e := max((xs:date(data($i/@tend)),xs:date(data($e))))
	return max($e)
    order by min($start)
	return <coal-max-sal tstart="{min($start)}" tend="{max($end)}" max-sal="{$dis-max-sal}">
    </coal-max-sal>
    	return
        <result>
        {$ans}
        </result>

