<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
	<xsl:template match="department">
		<html>
			<body>
				<h1>
					Retrieve the employment history of employee "Anneke Preusig"
				</h1>

				<hr/>
				<table bgcolor="yellow" border="1">
					<tbody>
						<tr>
                        <th style="text-align:center">Start Date</th>
                        <th style="text-align:center">End Date</th>
                        <th style="text-align:center">Department</th>
						</tr>
						<xsl:for-each select="deptname">
							<tr>
								<td>
									<xsl:value-of select="@tstart"/>
								</td>
								<td>
									<xsl:value-of select="@tend"/>
								</td>
								<td>
									<xsl:value-of select="."/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
