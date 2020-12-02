<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>
<script type="text/javascript">
	$(function() {
		$("#regBtn").click(function() {
			let uname = $("input[name='Username']").val();
			let upwd = $("input[name='Passward']").val();
			$.post("RegActionAjax", {
				uname : uname,
				upwd : upwd
			}, function(data) {
				console.log(data);
				if (data == "SUCCESS!") {
					alert("注册成功！");
				} else {
					alert("注册失败，请重试！");
				}
			})
		})
	})
</script>
<title>Res</title>
</head>
<body>

	<div class="container">

		<!-- 导航栏  -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
					<li class="nav-item"><a class="nav-link" href="#">QrCode</a></li>
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

		<!-- 主页面 -->
		<div class="row mt-3">

			<div class="col-sm-6">
				<h2>用户注册</h2>
				<form action="RegServlet" method="post"
					enctype="multipart/form-data">
					<!-- 输入用户名信息 -->
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">用户名</label>
						<div class="col-sm-10">
							<input type="text" name="Username" class="form-control"
								id="inputEmail3" placeholder="用户名" required="required">
						</div>
					</div>
					<!-- 输入密码信息 -->
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-2 col-form-label">密码</label>
						<div class="col-sm-10">
							<input type="password" name="Password" class="form-control"
								id="inputPassword3" placeholder="密码" required="required">
						</div>
					</div>
					<!-- 选择性别信息（单选框组） -->
					<fieldset class="form-group">
						<div class="row">
							<legend class="col-form-label col-sm-2 pt-0">性别</legend>
							<div class="col-sm-10">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="sexRadio"
										id="gridRadios1" value="男" checked> <label
										class="form-check-label" for="gridRadios1">男 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="sexRadio"
										id="gridRadios2" value="女"> <label
										class="form-check-label" for="gridRadios2">女 </label>
								</div>
							</div>
						</div>
					</fieldset>

					<!-- 出生年月 -->
					<div class="form-group row">
						<label for="ubirth" class="col-sm-2 col-form-label">出生年月</label>
						<div class="col-sm-10">
							<input type="date" name="birth" class="form-control" id="ubirth"
								value="2000-01-01">
						</div>
					</div>

					<!-- 选择特长信息（复选框） -->
					<div class="form-group row">
						<div class="col-sm-2">特长</div>
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
								<input class="form-check-input" type="checkbox"
									name="JavaScript" id="gridCheck4" value="JavaScript"> <label
									class="form-check-label" for="gridCheck4"> JavaScript </label>
							</div>
						</div>
					</div>
					<!-- 下拉框 -->
					<fieldset class="form-group">
						<div class="row">
							<legend class="col-form-label col-sm-2 pt-0">专业</legend>
							<div class="col-auto my-1">
								<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
								<select class="custom-select mr-sm-2"
									id="inlineFormCustomSelect" name="majors">
									<option value="计算机科学与技术" selected>计算机科学与技术</option>
									<option value="软件工程">软件工程</option>
									<option value="电子商务">电子商务</option>
									<option value="信息管理与信息系统">信息管理与信息系统</option>
								</select>
							</div>
						</div>
					</fieldset>

					<div class="form-group row">
						<label for="inputCode" class="col-sm-2 col-form-label">校验码</label> 
						<div class="col-sm-10">
							<input type="text" name="Usercode" class="form-control w-50"
									id="ucode" placeholder="校验码" required="required" style="display: inline-block">
									
							<img id="codeimg" alt="Code" src="ResImgServlet"
								style="display: inline-block">
						</div>						
					</div>

					<div class="form-group row">
						<div class="col-sm-10">
							<button type="button" id="regBtn" class="btn btn-primary">注册</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<!-- Begin page content -->
		<hr>
		<div class="container" id="footer">
			<p class="lead">学号：180110910603.
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp桌号：19.</p>
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