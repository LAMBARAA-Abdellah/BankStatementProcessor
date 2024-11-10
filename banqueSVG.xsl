<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="releve">
        <html>
            <head> Operations SVG</head>
            <body>
                <h1> Affichage des operation format Graph </h1>
                <h2> Rib: <xsl:value-of select='@RIB'/></h2>
                <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800">
                    <line x1="10" y1="750" x2="750" y2="750" stroke="blue" stroke-width="2"/>
                    <line x1="10" y1="10" x2="10" y2="750" stroke="blue" stroke-width="2"/>
                    <xsl:for-each select="operations/operation">
                        <xsl:variable name="index" select="position()"/>
                        <xsl:variable name="montant" select="@montant"/>
                        <xsl:variable name="date" select="@date"/>
                        <xsl:variable name="yPos" select="750 - $montant div 100"/>
                        <rect x="{50 + ($index - 1) * 60}" y="{$yPos}" width="30" height="{$montant div 100}" fill="green">
                            <animate attributeName="height" from="0" to="{$montant div 100}" dur="1s" fill="freeze"/>
                            <animate attributeName="y" from="750" to="{$yPos}" dur="1s" fill="freeze"/>
                        </rect>
                        <text x="{50 + ($index - 1) * 60 + 10}" y="{$yPos - 5}" font-size="12" fill="black">
                            <xsl:value-of select="$montant"/>
                        </text>
                        <text x="{50 + ($index - 1) * 60}" y="770" font-size="12" fill="black" transform="rotate(45 {50 + ($index - 1) * 60}, 770)">
                            <xsl:value-of select="$date"/>
                        </text>
                    </xsl:for-each>
                </svg>
                
                
                
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>