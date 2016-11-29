for $emp in /employees/employee
let $name := concat($emp/firstname, ' ', $emp/lastname)
for $salary in $emp/salary
let $start := $salary/@tstart
let $end := $salary/@tend
for $deptno in $emp/deptno
let $dstart := $deptno/@tstart
let $dend := $deptno/@tend
where $salary < 44000 and 
compare($end, "1995-01-06") >= 0 and compare($start, "1995-01-06") <= 0 and 
compare($dend, "1995-01-06") >= 0 and compare($dstart, "1995-01-06") <= 0
for $dept in /departments/department
where $dept/deptno = $deptno
return <result name="{$name}" department="{$dept/deptname}" salary="{$salary}"></result>
