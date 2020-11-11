<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Hello,PsyDuck~</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

</head>

<body>

	<div class="container-fluid">

		<!-- 导航栏 -->
		<%@ include file="nav.jsp"%>

		<!-- 左边导航栏 -->
		<div class="row mt-3">
			<div class="col-sm-2">
			
				<%@ include file="leftnav.jsp" %>
			
			</div>

			<div class="col-sm">
			
				<!-- 轮播图 -->
				<%@ include file="carousel.jsp"%>
				
			</div>

			<div class="col-sm-1"></div>
		</div>

		<!-- Begin page content -->
		<%@ include file="footer.jsp"%>
</body>

</html>