<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns="http://tempuri.org/HoaDonHang.xsd"
    exclude-result-prefixes="ns">

	<!-- Đảm bảo phương thức xuất là HTML -->
	<xsl:output method="html" indent="yes" />

	<!-- Template cho phần tử gốc -->
	<xsl:template match="/">
		<html>
			<head>
				<title>Danh sách bệnh nhân</title>
			</head>
			<body>
				<xsl:apply-templates select="ns:QLBV/ns:khoa"/>
			</body>
		</html>
	</xsl:template>

	<!-- Template cho từng khoa -->
	<xsl:template match="ns:QLBV/ns:khoa">
		<table border="0">
			<tr>
				<td>BỆNH VIỆN ĐA KHOA</td>
				<td>
					<b>DANH SÁCH BỆNH NHÂN</b>
				</td>
			</tr>
			<tr>
				<td>
					Khoa: <xsl:value-of select="ns:tenkhoa"/>
				</td>
				<td></td>
			</tr>
		</table>

		<table border="1">
			<tr>
				<th>STT</th>
				<th>Họ tên</th>
				<th>Ngày nhập viện</th>
				<th>Số ngày điều trị</th>
				<th>Số tiền phải trả</th>
			</tr>
			<xsl:apply-templates select="ns:dsbenhnhan/ns:benhnhan"/>
		</table>
	</xsl:template>

	<!-- Template cho từng bệnh nhân -->
	<xsl:template match="ns:dsbenhnhan/ns:benhnhan">
		<tr>
			<td>
				<xsl:value-of select="position()"/>
			</td>
			<td>
				<xsl:value-of select="ns:hoten"/>
			</td>
			<td>
				<xsl:value-of select="ns:ngaynhapvien"/>
			</td>
			<td>
				<xsl:value-of select="ns:songaynam"/>
			</td>
			<td>
				<xsl:value-of select="ns:songaynam * 15000"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
