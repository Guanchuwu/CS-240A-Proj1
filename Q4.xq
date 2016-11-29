for $emp in /employees/employee
	let $name := concat($emp/firstname, ' ', $emp/lastname)
    let $max_period := max
        (
			for $sal in $emp/salary
			    let $salperiod := min((current-date(), xs:date(data($sal/@tend)))) - xs:date(data($sal/@tstart))
			return $salperiod
        )
    for $sal in $emp/salary                                                     
			let $salperiod := min((current-date(), xs:date(data($sal/@tend)))) - xs:date(data($sal/@tstart))
		    where $salperiod = $max_period
return <result name="{$name}" salary="{$sal}" tstart="{$sal/@tstart}" tend="{min((current-date(), xs:date(data($sal/@tend))))}">                                                                      
</result>  