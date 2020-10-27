<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

#footer {
	text-align: center;
}
</style>
<title>RegInfo</title>
</head>
<body>
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
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
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

	<!-- Begin page content -->
	<div class="container" id="footer">
		<hr>
		<p class="lead">学号：180110910603.　　　　　　 桌号：19.</p>
		<p class="lead">姓名：陈彬捷.　 　　　　班级：18软工2班.</p>
		<p class="lead">If you have any questions, please contact my QQ
			879115657.</p>
		<span class="text-muted"><a href="https://github.com/ZUFEcsc">GitHub</a>
			| <a href="https://blog.csdn.net/qq_44702847">CSDN</a></span>

		<!-- <p>Back to <a href="/docs/4.2/examples/sticky-footer/">the default sticky footer</a> minus the navbar.</p> -->
	</div>
</body>
</html>