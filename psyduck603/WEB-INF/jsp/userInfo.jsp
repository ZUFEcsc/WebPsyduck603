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
						<span style="font-size: 1.25rem;">用户详情</span>
						<form class="form-inline my-2 my-lg-0" style="float: right;"
							method="post" action="UserSearch">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search" name="searchstr">
							<button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>

					<div class="card-body">

						<div class="card flex-md-row mb-4 h-md-250" style="border: 0px;">
							<div class="card-body d-flex flex-column align-items-start">
								<h5 class="mb-0">
									<span>用户名 ${userInfo.uname}</span>
								</h5>
								<div class="mb-1 card-text mb-auto" style="margin:0.75rem 0rem 0rem 0rem;">
									<p>id: ${userInfo.id}</p>
									<p>性别: ${userInfo.sex}</p>
									<p>专业: ${userInfo.major}</p>
									<p>出生年月: ${userInfo.birth}</p>
									<p>特长: ${userInfo.strong}</p>
								</div>
								
							</div>
							<svg
								class="bd-placeholder-img card-img-right flex-auto d-none d-lg-block"
								width="200" height="250" xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail">
										<title>Placeholder</title><rect fill="#55595c" width="100%"
									height="100%" />
										<text fill="#eceeef" dy=".3em" x="50%" y="50%">Thumbnail</text></svg>

						</div>
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