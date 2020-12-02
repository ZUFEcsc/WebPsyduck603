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
	#footer {
		text-align: center;
	}
	
	.p1{
		padding: 5px;
		height: 100px;
		width: 300px;
	}
</style>

<script type="text/javascript">
	$(function(){
		$(".a1").click(function(){
			//$(".p1").html($("input[name='inputtext']").val());
			
			let text = $("input[name='inputtext']").val();
			
			$.get("http://localhost:8080/demo02/TranslateAjax",{"key":text},function(data){
				
				console.log(data);
				
				$(".p1").html(data);
			})
		})
	})
</script>
<title>Hello,Web02~</title>
</head>
<body>

	<div class="container">
		<!-- 导航栏 -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
						<a class="nav-link" href="#">QrCode</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
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

		<div class="jumbotron mt-3">
			<input type="text" class="form-control w-25" style="display:inline-block;" name="inputtext">
			　<a class="a1 btn btn-lg btn-warning" href="#" role="button">翻译</a>
			<p class="p1 form-control" style="margin:10px 0px;width: 35%!important;">待翻译</p>
		</div>

		<!-- Begin page content -->
		<hr>

		<div class="container" id="footer">
			<p class="lead">学号：180110910603. &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp桌号：19.</p>
			<p class="lead">姓名：陈彬捷. &nbsp&nbsp&nbsp&nbsp&nbsp班级：18软工2班.</p>
			<p class="lead">If you have any questions, please contact my QQ 879115657.
			</p>
			<span class="text-muted"><a href="https://github.com/ZUFEcsc">GitHub</a> | <a
					href="https://blog.csdn.net/qq_44702847">CSDN</a></span>
		
			<!-- <p>Back to <a href="/docs/4.2/examples/sticky-footer/">the default sticky footer</a> minus the navbar.</p> -->
		</div>
	</div>
	
</body>
</html>