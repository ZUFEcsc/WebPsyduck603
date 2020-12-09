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
<title>ActivityList</title>
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
			<div class="col-sm">
				<h2>${info }</h2>
				<table class="table" style="margin: 0px;">
							<thead>
								<tr>
									<th scope="col">序号</th>
									<th scope="col">活动名称</th>
									<th scope="col">活动时间</th>
									<th scope="col">操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${acts}" var="item">
									<tr>
										<th scope="row">${item.aid}</th>
										<td>${item.aname}</td>
										<td>${item.atime}</td>
										<td width=30%>
											<a href="#" class="btn btn-light"><span>查看详情</span></a>
											<a href="#" class="btn btn-light"><span>修改1</span></a>
											<a href="#" class="btn btn-light"><span>修改2</span></a>									
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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