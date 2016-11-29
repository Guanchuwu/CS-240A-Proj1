<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="root">
        <html>
            <body>
                <h1>
                For each employee, show the longest period during which he/she went with no change in salary and his/her salary during that time.


                </h1>

                <hr/>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Name</th>
                        <th style="text-align:center">Salary</th>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        </tr>
                        <xsl:for-each select="result">
                            <tr>
                                <td>
                                    <xsl:value-of select="@name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@salary"/>
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
