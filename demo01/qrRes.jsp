<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
#footer {
	text-align: center;
}

.qrcard {
	margin-top: 10px;
	background: url(img/10.jpg) center;
	padding: 10% 5% 5% 60%;
}
</style>

<title>QrCodeRes</title>
</head>
<body>
	<div class="container">
		<!-- 导航栏 -->
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
					<li class="nav-item active"><a class="nav-link"
						href="success.jsp">Home <span class="sr-only">(current)</span></a></li>
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

		<div class="qrcard">
			<div class="w-100">
				<div class="card-body card">
					<h5 class="card-title">The generated QR Code is as follows</h5>
					<img class="card-img-top" src="img/${imgname}" alt="QrCodr">
					<div class="card-body">
						<p class="card-text">PsyDuck进行转换的内容： ${codeinfo}</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Begin page content -->
		<div class="container float-right" id="footer">
			<hr>
			<p class="lead">学号：180110910603. &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp桌号：19.</p>
			<p class="lead">姓名：陈彬捷. &nbsp&nbsp&nbsp&nbsp&nbsp班级：18软工2班.</p>
			<p class="lead">If you have any questions, please contact my QQ
				879115657.</p>
			<span class="text-muted"><a href="https://github.com/ZUFEcsc">GitHub</a>
				| <a href="https://blog.csdn.net/qq_44702847">CSDN</a></span>

			<!-- <p>Back to <a href="/docs/4.2/examples/sticky-footer/">the default sticky footer</a> minus the navbar.</p> -->
		</div>
	</div>

	<!-- 
	<p>要转换的内容：${codeinfo}</p>
	<p>生成的二维码图片如下：</p>
	<img alt="QrCode" src="img/${imgname}">
	 -->

</body>
</html>