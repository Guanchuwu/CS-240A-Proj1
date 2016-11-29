<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="root">
        <html>
            <body>
                <h1>
                For each employee show title history and his/her manager history.
                </h1>

                <hr/>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Name</th>
                        <th style="text-align:center">Title</th>
                        <th style="text-align:center">Title-Start</th>
                        <th style="text-align:center">Title-End</th>
                        <th style="text-align:center">Mgrno</th>
                        <th style="text-align:center">Mgrno-Start</th>
                        <th style="text-align:center">Mgrno-End</th>
                        </tr>
                        <xsl:for-each select="result">
                            <tr>
                                <td>
                                    <xsl:value-of select="@name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@title"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@title-start"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@title-end"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@mgrno"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@mgrno-start"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@mgrno-end"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
