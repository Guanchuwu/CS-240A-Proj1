for $emp in /employees/employee
	let $name := concat($emp/firstname, ' ', $emp/lastname)
    for $title in $emp/title
    for $deptno in $emp/deptno
    let $start := $deptno/@tstart
    let $end := min((current-date(),xs:date(data($deptno/@tend))))
for $dept in /departments/department
	where $dept/deptno = $deptno
	for $mgrno in $dept/mgrno
    where $mgrno/@tstart<=$end and $mgrno/@tend>=$start
   
return <result name="{$name}" title="{$title}" title-start="{$title/@tstart}" title-end="{$title/@tend}" deptno = "{$deptno}" mgrno="{$mgrno}" mgrno-start = "{max((xs:date(data($start)),xs:date(data($mgrno/@tstart))))}" mgrno-end = "{min((xs:date(data($end)),xs:date(data($mgrno/@tend))))}"></result>






