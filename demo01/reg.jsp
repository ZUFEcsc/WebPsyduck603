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
<title>Res</title>
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

		<div class="container">
			<h2>Sign in</h2>
			<form action="RegServlet" method="post" enctype="multipart/form-data">
				<!-- 输入用户名信息 -->
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
					<div class="col-sm-10">
						<input type="text" name="Username" class="form-control"
							id="inputEmail3" placeholder="UserName" required="required">
					</div>
				</div>
				<!-- 输入密码信息 -->
				<div class="form-group row">
					<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
					<div class="col-sm-10">
						<input type="password" name="Password" class="form-control"
							id="inputPassword3" placeholder="Password" required="required">
					</div>
				</div>
				<!-- 上传头像图片 -->
				<div class="form-group">
					<label for="exampleFormControlFile1">Upload your image ：</label> <input
						type="file" class="form-control-file" id="exampleFormControlFile1" name="Userimg" accept="image/gif,image/jpeg,image/jpg,image/png">
				</div>
				<!-- 选择性别信息（单选框组） -->
				<fieldset class="form-group">
					<div class="row">
						<legend class="col-form-label col-sm-2 pt-0">Sex</legend>
						<div class="col-sm-10">
							<div class="form-check">
								<input class="form-check-input" type="radio" name="sexRadio"
									id="gridRadios1" value="Boy" checked> <label
									class="form-check-label" for="gridRadios1">Boy </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="sexRadio"
									id="gridRadios2" value="Girl"> <label
									class="form-check-label" for="gridRadios2">Girl </label>
							</div>
						</div>
					</div>
				</fieldset>

				<!-- 选择特长信息（复选框） -->
				<div class="form-group row">
					<div class="col-sm-2">Specialty</div>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="Java"
								id="gridCheck1" value="Java" checked> <label
								class="form-check-label" for="gridCheck1"> Java </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="C++"
								id="gridCheck2" value="C++"> <label
								class="form-check-label" for="gridCheck2"> C++ </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="Python"
								id="gridCheck3" value="Python"> <label
								class="form-check-label" for="gridCheck3"> Python </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="JavaScript"
								id="gridCheck4" value="JavaScript" checked> <label
								class="form-check-label" for="gridCheck4"> JavaScript </label>
						</div>
					</div>
				</div>
				<!-- 下拉框 -->
				<fieldset class="form-group">
					<div class="row">
						<legend class="col-form-label col-sm-2 pt-0">Major</legend>
						<div class="col-auto my-1">
							<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
							<select class="custom-select mr-sm-2" id="inlineFormCustomSelect"
								name="majors">
								<option value="Computer Major" selected>Computer Major</option>
								<option value="Software Engineering">Software
									Engineering</option>
								<option value="E-commerce Major">E-commerce Major</option>
								<option value="Information Major">Information Major</option>
							</select>
						</div>
					</div>
				</fieldset>
				<!--
			<div class="form-group row">
				<div class="col-sm-2">Major</div>
				<div class="col-sm-10">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" name="majors"
							id="gridCheck1" value="Computer" checked> <label
							class="form-check-label" for="gridCheck1"> Computer </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" name="majors"
							id="gridCheck2" value="Software Engineering" checked> <label
							class="form-check-label" for="gridCheck2"> Software
							Engineering </label>
					</div>
				</div>
			</div>
			-->

				<div class="form-group row">
					<div class="col-sm-10">
						<button type="submit" class="btn btn-primary">Sign in</button>
					</div>
				</div>
			</form>

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
	</div>

</body>
</html>