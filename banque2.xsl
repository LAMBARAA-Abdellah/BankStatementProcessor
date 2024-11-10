<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:template match="/releve">
        <html>
            <head>
                <title>Relevé Bancaire (CREDIT)</title>
            </head>
            <body>
                <h1>Relevé Bancaire (CREDIT)</h1>
                <p><strong>RIB:</strong> <xsl:value-of select="@RIB"/></p>
                <p><strong>Date du relevé:</strong> <xsl:value-of select="dateReleve"/></p>
                <p><strong>Solde:</strong> <xsl:value-of select="solde"/></p>
                
                <h2>Opérations</h2>
                <table border="1" width="80%">
                    <tr>
                        <th>Type</th>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="operations/operation[@type='CREDIT']">
                        <tr>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h3>Total des opérations de crédit</h3>
                <p>
                    <xsl:value-of select="sum(operations/operation[@type='CREDIT']/@montant)"/>
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>