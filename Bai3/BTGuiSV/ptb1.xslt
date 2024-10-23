<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="goc">
		<html>
			<head>
				<title>Giải phương trình bậc nhất</title>
			</head>
			<body>
				<xsl:variable name="a" select="hsa"/>
				<xsl:variable name="b" select="hsb"/>

				<b>
					Phương trình: <xsl:value-of select="$a"/>x  + <xsl:value-of select="$b"/> = 0 có nghiệm là:
				</b>
				<br />
				<xsl:choose>
					<xsl:when test="$a = 0">
						<xsl:choose>
							<xsl:when test="$b = 0">
								Phương trình có vô số nghiệm
							</xsl:when>
							<xsl:otherwise>
								Phương trình vô nghiệm
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise>
						Phương trình có nghiệp: <xsl:value-of select="-$b div $a"/>
					</xsl:otherwise>
				</xsl:choose>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
