for $emp in /employees/employee
  where $emp/firstname ="Anneke" and $emp/lastname ="Preusig"
for $deptno in $emp/deptno
  for $dept in /departments/department
  where $dept/deptno = $deptno 
return
<department>
	{
	  $dept/deptname
	}
</department>