<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>
<style>
	#flagcode{
		padding:auto;
	}
	
	#flagcode img{
		width:50%;
		height:50%;
	}
</style>
<title>ActivitySignUp</title>
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
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/ActSignUp">活动发布</a></li>
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
			<div class="col-sm-8">
				<h2>${info}</h2>
				<form action="${pageContext.request.contextPath}/UserSignUpServlet" method="post">
					<input type="hidden" value="${act.aid}" name="aid">
					<!-- 输入用户名信息 -->
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-3 col-form-label">活动名称</label>
						<div class="col-sm">
							<p>${act.aname}</p>
						</div>
					</div>

					<!-- 活动开始时间 -->
					<div class="form-group row">
						<label for="atime" class="col-sm-3 col-form-label">活动开始时间</label>
						<div class="col-sm">
							<p>${act.atime}</p>
						</div>
					</div>
					
					<!-- 活动报名时间 -->
					<div class="form-group row">
						<label for="astart" class="col-sm-3 col-form-label">活动报名时间</label>
						<div class="col-sm">
							<p>${act.astart}</p>
						</div>
						----
						<div class="col-sm">
							<p>${act.aend}</p>
						</div>
					</div>
					
					<!-- 下拉框 -->
					<fieldset class="form-group">
						<div class="row">
							<legend class="col-form-label col-sm-3 pt-0">活动所属学院</legend>
							<div class="col-auto my-1 col-sm">
								<select class="custom-select mr-sm-2"
									id="inlineFormCustomSelect" name="acol">
									<c:forEach items="${collist}" var="col">
										<option value="${col.cname}">${col.cname}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</fieldset>
						
					<!-- 输入活动内容信息 -->
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-3 col-form-label">活动内容</label>
						<div class="col-sm">
							<textarea class="form-control" name="atext" rows="3">${act.atext}</textarea>
						</div>
					</div>
					
					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">确认报名</button>
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