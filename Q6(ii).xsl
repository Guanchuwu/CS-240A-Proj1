<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="result">
        <html>
            <body>
                <h1>
                Print the history of employee count for the whole company.
                </h1>

                <hr/>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="count">
                            <tr>
                                <td>
                                    <xsl:value-of select="@tstart"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@tend"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@count"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
