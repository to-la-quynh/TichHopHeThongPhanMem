<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<title>Hoá đơn hàng</title>
			</head>
			<body>
				<xsl:apply-templates select="ds/hoadon"/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="ds/hoadon">
		<h2 align="center">PHIẾU MUA HÀNG</h2>
		<table border="0">
			<tr>
				<td>
					<b>Hoá đơn: </b>
					<xsl:value-of select="mahd"/>
				</td>
				<td>
					<b>Ngày bán: </b>
					<xsl:value-of select="ngayban"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>Loại hàng: </b>
					<xsl:value-of select="loaihang/@tenloai"/>
				</td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<th>Mã hàng</th>
				<th>Tên hàng</th>
				<th>Số lượng</th>
				<th>Đơn giá</th>
				<th>Thành tiền</th>
			</tr>
			<xsl:apply-templates select="loaihang/hang"/>
		</table>
		<hr></hr>
	</xsl:template>

	<xsl:template match="loaihang/hang">
		<tr>
			<td>
				<xsl:value-of select="@mahang"/>
			</td>
			<td>
				<xsl:value-of select="tenhang"/>
			</td>
			<td>
				<xsl:value-of select="soluong"/>
			</td>
			<td>
				<xsl:value-of select="dongia"/>
			</td>
			<td>
				<xsl:value-of select="soluong*dongia"/>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
