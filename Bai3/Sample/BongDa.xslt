<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<tittle>Các thần tượng bóng đá</tittle>
			</head>
			<body>
				<h2>Các nhân vật tiêu biểu bóng đá</h2>
				<table border="2" cellpadding="3">
					<tr>
						<td>Cầu thủ</td>
						<td>Số bàn thắng</td>
						<td>Số lần sút</td>
						<td>Số lần được tạo cơ hội</td>
					</tr>
					<xsl:for-each select="bongda/cauthu">
						<tr>
							<td>
								<xsl:value-of select="hoten"/>
							</td>
							<td>
								<xsl:value-of select="ghiban"/>
							</td>
							<td>
								<xsl:value-of select="sosut"/>
							</td>
							<td>
								<xsl:value-of select="cohoi"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<h2>Tổng số cú sút:</h2>
				<xsl:value-of select="sum(bongda/cauthu/sosut)"/>
				<h2>Số lượng cầu thủ:</h2>
				<xsl:value-of select="count(bongda/cauthu)"/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
