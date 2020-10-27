<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login~</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
.carousel-inner img {
	width: 100%;
	height: 100%;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
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

.form-control {
	margin: 3px 0px 0px 0px;
}

#codeimg {
	margin: -2px 0px 4px 0px;
}

#footer {
	text-align: center;
}
</style>

</head>
<body class="text-center">

	<div class="container">

		<!-- 导航栏  -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.jsp"><img
				src="img/psyduck.png" alt="" width="20%" height="20%"> PsyDuck</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="qrCode.jsp">QrCode</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Dropdown </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
					</li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>

		<!-- 轮播图 -->
		<div id="demo" class="carousel slide" data-ride="carousel"
			data-interval="3000">

			<!-- æç¤ºç¬¦ -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>

			<!-- 轮播图图片 -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/8.jpg">
				</div>
				<div class="carousel-item">
					<img src="img/7.jpg">
				</div>
				<div class="carousel-item">
					<img src="img/11.jpg">
				</div>
			</div>

			<!-- å·¦å³åæ¢æé® -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>

		</div>

		<div class="logincard">
			<!-- 登陆表单 -->
			<form class="form-signin" action="LoginServlet" method="post">
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
		<div class="container" id="footer">
			<h2>WELCOME To My Website ~</h2>
			<p class="lead">学号：180110910603. &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp桌号：19.</p>
			<p class="lead">姓名：陈彬捷. &nbsp&nbsp&nbsp&nbsp&nbsp班级：18软工2班.</p>
			<p class="lead">If you have any questions, please contact my QQ
				879115657.</p>
			<span class="text-muted"><a href="https://github.com/ZUFEcsc">GitHub</a>
				| <a href="https://blog.csdn.net/qq_44702847">CSDN</a></span>

			<!-- <p>Back to <a href="/docs/4.2/examples/sticky-footer/">the default sticky footer</a> minus the navbar.</p> -->
		</div>

	</div>
</body>
</html>