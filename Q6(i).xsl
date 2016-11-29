<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="root">
        <html>
            <body>
                <h1>
                Print the history of employee count for each department
                </h1>

                <hr/>
                <h2>d001</h2>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d001']/count">
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


                <hr/>
                <h2>d002</h2>
                <table bgcolor="green" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d002']/count">
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


                <hr/>
                <h2>d003</h2>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d003']/count">
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


                <hr/>
                <h2>d004</h2>
                <table bgcolor="green" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d004']/count">
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


                <hr/>
                <h2>d005</h2>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d005']/count">
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


                <hr/>
                <h2>d006</h2>
                <table bgcolor="green" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d006']/count">
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


                <hr/>
                <h2>d007</h2>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d007']/count">
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


                <hr/>
                <h2>d008</h2>
                <table bgcolor="green" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d008']/count">
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


                <hr/>
                <h2>d009</h2>
                <table bgcolor="yellow" border="1">
                    <tbody>
                        <tr>
                        <th style="text-align:center">Start</th>
                        <th style="text-align:center">End</th>
                        <th style="text-align:center">Count</th>
                        </tr>
                        <xsl:for-each select="result[@deptno='d009']/count">
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
