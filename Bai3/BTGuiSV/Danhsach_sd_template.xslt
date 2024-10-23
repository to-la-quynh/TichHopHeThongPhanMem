<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="ds/congty">
		<html>
			<head>
				<title>Bảng lương</title>
				<style>
					table {
					background: yellow;
					}
					.so {
					color: red;
					font-size: 24px;
					}
				</style>
			</head>
			<body>
				<h2 align="center">BẢNG LƯƠNG THÁNG</h2>
				<b>Tên công ty: </b>
				<xsl:value-of select="@tenct"/>
				<br />
				<b>Tên phòng: </b>
				<xsl:value-of select="donvi/tendv"/>
				<table border="1" cellspacing="0" width="100%">
					<tr>
						<th>STT</th>
						<th>Họ tên</th>
						<th>Ngày sinh</th>
						<th>Ngày công</th>
						<th>Lương</th>
					</tr>
					<xsl:apply-templates select="donvi/nhanvien"/>
				</table>
				<hr/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="donvi/nhanvien">
		<tr>
			<td class="so">
				<xsl:value-of select="position()"/>
			</td>
			<td>
				<xsl:value-of select="hoten"/>
			</td>
			<td>
				<xsl:value-of select="ngaysinh"/>
			</td>
			<td class="so">
				<xsl:value-of select="ngaycong"/>
			</td>
			<td class="so">
				<xsl:choose>
					<xsl:when test="ngaycong &lt;= 20">
						<xsl:value-of select="ngaycong * 150000"/>
					</xsl:when>
					<xsl:when test="ngaycong &lt;= 25">
						<xsl:value-of select="20 * 150000 + (ngaycong - 20) * 200000"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="20 * 150000 + 5 * 200000 + (ngaycong - 25) * 250000"/>
					</xsl:otherwise>
				</xsl:choose>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
