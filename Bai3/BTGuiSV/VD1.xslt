<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/goc">
		<html>
			<head>
				<title>Ví dụ 1: Tổng 2 số</title>
			</head>
			<body>
				<!--Cách 1: Trích rút thông tin trực tiếp-->
				<!--Tổng 2 số là: <xsl:value-of select="so[1]"/> + <xsl:value-of select="so[2]"/> = <xsl:value-of select="so[1]+so[2]"/>-->

				<!--Cách 2: Trích rút thông tin qua các biến-->
				<xsl:variable name="a" select="so[1]"/>
				<xsl:variable name="b" select="so[2]"/>
				Tổng 2 số là: <xsl:value-of select="$a"/> + <xsl:value-of select="$b"/> = <xsl:value-of select="$a + $b"/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
