<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>Hello,Web01~</title>
</head>
<body>

	<div class="container-fluid">
		<!-- 导航栏 -->
		<%@ include file="nav.jsp"%>

		<!-- 主页面 -->
		<div class="row mt-3">
			<div class="col-sm-2">
				<%@ include file="leftnav.jsp" %>
			</div>
			
			<div class="col-sm-1"></div>

			<div class="col-sm">
			
				<div class="alert alert-light" role="alert">The user is not
					logged in and cannot view the contents of the home page.</div>

				<div class="jumbotron mt-3">
					<h3>Dear users,</h3>
					<p class="lead">please click the button below to login to get a
						better user experience.</p>
					<a class="btn btn-lg btn-warning" href="login.jsp" role="button">Click
						to enter the login &raquo;</a>
				</div>
				
			</div>

			<div class="col-sm-3"></div>

		</div>

		<!-- 页脚 -->
		<%@ include file="footer.jsp"%>

	</div>

</body>
</html>