<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="congty">
		<html>
			<head>
				<title>Nhân viên</title>
				<style>
					th {
					color: green;
					font-size: 25px;
					background: red;
					}

					.so {
					text-align: right;
					}

					.chuoi {
					text-align: left;
					}
				</style>
			</head>
			<body>
				<xsl:for-each select="donvi">
					<h2 align="center">BẢNG LƯƠNG THÁNG 11-2020</h2>
					Mã đơn vị: <xsl:value-of select="@madv"/>
					<br/>
					Tên đơn vị: <xsl:value-of select="tendv"/>
					<br/>
					Điện thoại: <xsl:value-of select="dienthoai"/>
					<h2 align="center">DANH SÁCH NHÂN VIÊN</h2>
					<table border="1" cellspacing="0">
						<tr>
							<th>SỐ TT</th>
							<th>MÃ NV</th>
							<th>HỌ TÊN</th>
							<th>NGÀY SINH</th>
							<th>HS LƯƠNG</th>
							<th>LƯƠNG</th>
						</tr>
						<xsl:for-each select="nhanvien[hsluong &gt;= 3]">
							<tr>
								<td class="so">
									<xsl:value-of select="position()"/>
								</td>
								<td class="chuoi">
									<xsl:value-of select="manv"/>
								</td>
								<td class="chuoi">
									<xsl:value-of select="hoten"/>
								</td>
								<td class="chuoi">
									<xsl:value-of select="ngaysinh"/>
								</td>
								<td class="so">
									<xsl:value-of select="hsluong"/>
								</td>
								<td class="so">
									<xsl:value-of select="hsluong*730000"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
					<h2 align="right">THỦ TRƯỞNG ĐƠN VỊ</h2>
					<hr/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
