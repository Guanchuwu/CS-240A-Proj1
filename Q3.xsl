<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="root">
        <html>
            <body>
                <h1>
                For all departments, show their history in the period starting on 1994-05-01 and ending 1996-05-06.

                </h1>

                <hr/>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Department Number</th>
                        <th style="text-align:center">Department Name</th>
                        <th style="text-align:center">Manager Number</th>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">end</th>
                        <th style="text-align:center">Manager Number</th>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">end</th>
                        </tr>
                        <xsl:for-each select="result">
                            <tr>
                                <td>
                                    <xsl:value-of select="deptno"/>
                                </td>
                                <td>
                                    <xsl:value-of select="deptname"/>
                                </td>
                                <xsl:for-each select="mgrno">
                                <td>
                                    <xsl:value-of select="."/>
                                </td>
                                <td>
                                    <xsl:value-of select="@tstart"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@tend"/>
                                </td>

                                </xsl:for-each>
                                <td>
                                    <xsl:value-of select="@salary"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
