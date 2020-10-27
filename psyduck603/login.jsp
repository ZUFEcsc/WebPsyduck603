<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login~</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

</head>
<body>

	<div class="container-fluid">

		<!-- 导航栏  -->
		<%@ include file="nav.jsp"%>

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

		<!-- 主页面 -->
		<div class="logincard text-center">
			<!-- 登陆表单 -->
			<form class="form-signin" action="../src/response/LoginServlet" method="post">
				<img class="mb-4" src="img/wordpsy.png" alt="" width="72"
					height="72">
				<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
				<label for="inputUsername" class="sr-only">Username</label> <input
					type="text" name="Username" class="form-control"
					placeholder="UserName" required autofocus> <label
					for="inputPassword" class="sr-only">Password</label> <input
					type="password" name="Password" class="form-control"
					placeholder="Password" required> <label for="inputPassword"
					class="sr-only">Code</label> <input type="text" name="Code"
					class="form-control" placeholder="Code"
					style="width: 75%; display: inline-block"> <img
					id="codeimg" alt="Code" src="ResImgServlet"
					style="display: inline-block">

				<p style="color: red; font-weight: bold;">${info}</p>
				<label> <input type="checkbox" value="remember-me">
					Remember me <a href="reg.jsp">Click to sign up</a>
				</label>
				<button class="btn btn-lg btn-warning btn-block" type="submit">Sign
					in</button>
			</form>
		</div>

		<!-- Begin page content -->
		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>