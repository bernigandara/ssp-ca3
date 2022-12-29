<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Dawson Outfitters Menu</title>
      </head>
      <body>
        <h1>Dawson Outfitters Menu</h1>
        <xsl:apply-templates select="brand/menu"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="menu">
    <h2><xsl:value-of select="@name"/></h2>
    <ul>
      <xsl:apply-templates select="product"/>
    </ul>
  </xsl:template>

  <xsl:template match="product">
    <li>
      <xsl:value-of select="listing"/>
      <ul>
        <li>Price: <xsl:value-of select="price"/> </li>
        <li>Sizes:
          <ul>
            <xsl:apply-templates select="size | sizes"/>
          </ul>
        </li>
        <li>Colors:
          <ul>
            <xsl:apply-templates select="colors"/>
          </ul>
        </li>
      </ul>
    </li>
  </xsl:template>

  <xsl:template match="size | sizes">
    <li><xsl:value-of select="."/></li>
  </xsl:template>

  <xsl:template match="colors">
    <li><xsl:value-of select="."/></li>
  </xsl:template>

</xsl:stylesheet>
