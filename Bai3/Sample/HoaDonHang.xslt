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
			<xsl:for-each select="DS/HoaDon">
				<body>
					<h2 align="center">PHIẾU MUA HÀNG</h2>
					<table border="0" width="100%">
						<tr>
							<td>
								<b>Hoá đơn: </b>
								<xsl:value-of select="MaHD"/>
							</td>
							<td>
								<b>Ngày bán: </b>
								<xsl:value-of select="NgayBan"/>
							</td>
						</tr>
						<tr>
							<td>
								<b>Loại hàng: </b>
								<xsl:value-of select="LoaiHang/@TenLoai"/>
							</td>
							<td></td>
						</tr>
					</table>

					<table border="1" width="100%">
						<tr>
							<th>Mã hàng</th>
							<th>Tên hàng</th>
							<th>Số lượng</th>
							<th>Đơn giá</th>
							<th>Thành tiền</th>
						</tr>
						<xsl:for-each select="LoaiHang/Hang">
							<tr>
								<td>
									<xsl:value-of select="@MaHang"/>
								</td>
								<td>
									<xsl:value-of select="TenHang"/>
								</td>
								<td>
									<xsl:value-of select="SoLuong"/>
								</td>
								<td>
									<xsl:value-of select="DonGia"/>
								</td>
								<td>
									<xsl:value-of select="DonGia*SoLuong"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
					<b align="right">Người Giao</b>
				</body>
			</xsl:for-each>
		</html>
	</xsl:template>
</xsl:stylesheet>
