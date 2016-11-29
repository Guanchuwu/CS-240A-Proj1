<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="result">
        <html>
            <body>
                <h1>
                For the employees in department d005, find the maximum of their salaries over time, and print the history of such a maximum.
                </h1>

                <hr/>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Max-Salary</th>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>

                        </tr>
                        <xsl:for-each select="coal-max-sal">
                            <tr>
                                <td>
                                    <xsl:value-of select="@max-sal"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@tstart"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@tend"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
