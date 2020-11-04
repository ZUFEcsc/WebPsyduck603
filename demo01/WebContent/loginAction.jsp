<%@page import="login.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
	.carousel-inner img {
		width: 100%;
		height: 100%;
	}

	.bd-placeholder-img {
		font-size: 1.125rem;
		text-anchor: middle;
	}

	@media (min-width: 768px) {
		.bd-placeholder-img-lg {
			font-size: 3.5rem;
		}
	}

	.logincard {
		position: absolute;
		right: 20px;
		width: 300px;
		bottom: 400px;
	}

	#footer {
		text-align: center;
	}
</style>

<title>LoginAction</title>
</head>
<body>
	<div class="container">
	
		<%
		//新建一个UserInfo对象
		UserInfo ui= new UserInfo();
		//获取用户输入用户名Mickey
		String uname = request.getParameter("Username");
		//获取密码csnb6666
		String upwd = request.getParameter("Password");
		//跳转url
		
		//判断用户密码--业务逻辑--->用一个类封装(接口)
		
		//response.sendRedirect("url");
		//if("Mickey".equals(uname) && "123".equals(upwd))
		if(UserInfo.login(uname,upwd))
		{	
			response.sendRedirect("success.html");
			out.print("<p>登入成功</p>");
		}
		else
		{
			//输出
			out.print("<div class='alert alert-danger' role='alert'><p class='lead' style='font-weight: bold;'>Wrong user name or password, please try to login again !!!</p></div>");	
		}
		%>
			
		<!-- 导航栏 -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.jsp"><img src="img/psyduck.png" alt="" width="20%" height="20%"> PsyDuck</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Link</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Dropdown
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a>
							<a class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">Disabled</a>
					</li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>

		<div class="alert alert-light" role="alert">
			The user is not logged in and cannot view the contents of the home page.
		</div>
		
		<div class="jumbotron mt-3">
			<h3>Dear users,</h3>
			<p class="lead">please click the button below to login to get a better user experience.</p>
			<a class="btn btn-lg btn-primary" href="login.html" role="button">Click to enter the login &raquo;</a>
		</div>

		<!-- Begin page content -->
		<hr>

		<div class="container" id="footer">
			<p class="lead">学号：180110910603.　　　　　　 桌号：19.</p>
			<p class="lead">姓名：陈彬捷.　 　　　　班级：18软工2班.</p>
			<p class="lead">If you have any questions, please contact my QQ 879115657.
			</p>
			<span class="text-muted"><a href="https://github.com/ZUFEcsc">GitHub</a> | <a
					href="https://blog.csdn.net/qq_44702847">CSDN</a></span>

			<!-- <p>Back to <a href="/docs/4.2/examples/sticky-footer/">the default sticky footer</a> minus the navbar.</p> -->
		</div>
	</div>

</body>
</html>