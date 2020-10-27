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
	padding: 18% 5% 10% 60%;
}

.bgimg {
	position: relative;
	width: 100%;
	display: block;
}

input[type=range] {
	margin-top: 8px;
	outline: none;
	-webkit-appearance: none; /*清除系统默认样式*/
	width: 100% !important;
	background: -webkit-linear-gradient(#ffc107, #ffc107) no-repeat, #ddd;
	background-size: 33% 100%; /*设置左右宽度比例*/
	height: 3px; /*横条的高度*/
}
/*拖动块的样式*/
input[type=range]::-webkit-slider-thumb {
	-webkit-appearance: none; /*清除系统默认样式*/
	height: 16px; /*拖动块高度*/
	width: 16px; /*拖动块宽度*/
	background: #f8f9fa; /*拖动块背景*/
	border-radius: 50%; /*外观设置为圆形*/
	border: solid 1px #ddd; /*设置边框*/
}
</style>

<script type="text/javascript">
	changeSpeed();
	function changeSpeed() {
		var value = $('#Qrsize').val();
		var valStr = (value - 200) / 3 + "% 100%";
		$('#Qrsize').css({
			"background-size" : valStr
		})
		$('#Qrsizeinfo').html(value);
		//document.getElementById('Qrsizeinfo').innerHTML=value;
	};
</script>

<script type="text/javascript">
	$(function changeQrcode() {
		
	});
</script>

<title>QrCodeReq</title>
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
					<h5 class="card-title">Online generation of QR Code</h5>
					<!-- 二维码表单 -->
					<form method="post" action="QrCodeServlet">
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-10 col-form-label">请输入要转换的内容：</label>
						</div>
						<div class="form-group row col-sm-12">
							<input type="text" class="form-control" id="Qrinfo" name="Qrinfo"
								value="csnb">
						</div>
						<div class="form-group row">
							<label for="formControlRange" class="col-sm-10 col-form-label">请选择要生成二维码的大小：
								<span id="Qrsizeinfo">300</span>
							</label>
						</div>
						<div class="form-group row col-sm-10">
							<input id="Qrsize" type="range" class="form-control-range"
								min="200" max="500" name="Qrsize" value="300" step="10"
								onchange="changeSpeed()">
						</div>
						<button type="submit" class="btn btn-warning float-right">点击生成二维码（跳转页面）</button>
						<!-- <button id="b1" class="btn btn-warning float-right">点击生成二维码（本地页面）</button>-->
					</form>
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
	<form method="post" action="QrCodeServlet">
		<p>
			请输入要转换的内容： <input type="text" name="Qrinfo" value="csnb">
		</p>
		<p>
			请选择要生成二维码的大小： <span id="Qrsizeinfo">300</span> <input id="Qrsize"
				type="range" min="200" max="500" name="Qrsize" value="300" step="10"
				onchange="document.getElementById('Qrsizeinfo').innerHTML=value">
		</p>
		<p>
			<button>点击生成二维码</button>
		</p>
	</form>
	 -->
</body>
</html>