<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>RegInfo</title>
</head>
<body>
	<div class="container-fluid">
		<!-- 导航栏  -->
		<%@ include file="nav.jsp"%>

		<!-- 主页面 -->
		<div class="row mt-3">

			<div class="col-sm-2">
				<%@ include file="leftnav.jsp" %>
			</div>

			<div class="col-sm">
				<ul class="list-unstyled">
					<h2>${regInfo}</h2>
					<ul>
						<li>Username: ${username}</li>
						<li>Password: ${password}</li>
						<li>Sex: ${sex}</li>
						<li>Major: ${major}</li>
						<li>Specialty: ${specialty}</li>
						<li>Reg Date: ${regDate}</li>
						<li>Reg IP: ${ip}</li>
						<li>Userimg:<img src="img/${userimg}"></img></li>
					</ul>
				</ul>
			</div>

			<div class="col-sm-2"></div>

		</div>

	</div>

	<!-- Begin page content -->
	<%@ include file="footer.jsp"%>
</body>
</html>