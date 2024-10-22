<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<title>Ví dụ về Choose</title>
			</head>
			<body>
				<h2 align="center">DANH SÁCH SINH VIÊN</h2>
				<xsl:for-each select="DSSV/sv">
					<!--Gán biến điểm để sử dụng cho choose-->
					<xsl:variable name="biendiem" select="diem"/>
					<b>Mã SV: </b>
					<xsl:value-of select="@masv"/>
					<br></br>
					<b>Họ tên: </b>
					<xsl:value-of select="hoten"/>
					<br></br>
					<b>Điểm: </b>
					<xsl:value-of select="diem"/>
					<br></br>
					<b>Điểm bằng chữ: </b>
					<xsl:choose>
						<xsl:when test="$biendiem &lt; 5">Kém</xsl:when>
						<xsl:when test="$biendiem &gt; 8">Giỏi</xsl:when>
						<xsl:otherwise>Trung bình</xsl:otherwise>
					</xsl:choose>
					<br></br>
					<hr></hr>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
