<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>UserList</title>
</head>
<body>
	<div class="container-fluid">
		<!-- 导航栏  -->
		<%@ include file="nav.jsp"%>

		<!-- 主页面 -->
		<div class="row mt-3">

			<div class="col-sm-2">
				<%@ include file="leftnav.jsp"%>
			</div>

			<div class="col-sm">

				<div class="card">

					<div class="card-header">
						<span style="font-size:1.25rem;">日志列表</span>
						<form class="form-inline my-2 my-lg-0" style="float:right;" method="post" action="UserSearch">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search" name="searchstr">
							<button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>

					<div class="card-body" style="padding: 0px;">
						<!-- <h5 class="card-title">Special title treatment</h5> -->
						<table class="table" style="margin: 0px;">
							<thead>
								<tr>
									<th scope="col">序号</th>
									<th scope="col">ip地址</th>
									<th scope="col">登陆时间</th>
									<th scope="col">访问uri</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${logs}" var="item">
									<tr>
										<th scope="row">${item.id}</th>
										<td>${item.ip}</td>
										<td>${item.visitTime}</td>
										<td>${item.URI}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>

			<div class="col-sm-2"></div>

		</div>

	</div>

	<!-- Begin page content -->
	<%@ include file="footer.jsp"%>
</body>
</html>