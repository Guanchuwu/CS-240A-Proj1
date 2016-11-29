<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="root">
        <html>
            <body>
                <h1>
                    Retrieve the name, salary and department of each employee who, on 1995-01-06 was making less than $44000.
                </h1>

                <hr/>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Name</th>
                        <th style="text-align:center">Department</th>
                        <th style="text-align:center">Salary</th>
                        </tr>
                        <xsl:for-each select="result">
                            <tr>
                                <td>
                                    <xsl:value-of select="@name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@department"/>
                                </td>
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
