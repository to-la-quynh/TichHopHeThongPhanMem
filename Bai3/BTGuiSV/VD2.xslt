<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="goc">
		<html>
			<head>
				<title>Ví dụ 2: Số lớn nhất</title>
			</head>
			<body>
				<xsl:variable name="a" select="so[1]"/>
				<xsl:variable name="b" select="so[2]"/>
				Số lớn nhất giữa 2 số <xsl:value-of select="$a"/> và <xsl:value-of select="$b"/> là:
				<!--Cách 1: Dùng if-->
				<!--<xsl:if test="$a &gt; $b">
					<xsl:value-of select="$a"/>
				</xsl:if>
				<xsl:if test="$a &lt;= $b">
					<xsl:value-of select="$b"/>
				</xsl:if>-->

				<!--Cách 2: Dùng Choose-->
				<xsl:choose>
					<xsl:when test="$a &gt; $b">
						<xsl:value-of select="$a"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$b"/>
					</xsl:otherwise>
				</xsl:choose>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
