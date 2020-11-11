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

								<form class="w-75" style="margin: 1rem 0rem 0rem 0rem;" method="post" action="UserUpdateServlet">
									<div class="form-group row">
										<label for="uname" class="col-sm-2 col-form-label"><span
											style="float: right;">用户名</span></label>
										<div class="col-sm-10">
											<input type="text" readonly class="form-control-plaintext"
												id="uname" name="uname" value="${userInfo.uname}"
												style="font-weight: bolder;">
										</div>
									</div>

									<div class="form-group row">
										<label for="uid" class="col-sm-2 col-form-label"><span
											style="float: right;">id</span></label>
										<div class="col-sm-10">
											<input type="text" readonly class="form-control-plaintext"
												id="uid" name="id" value="${userInfo.id}">
										</div>
									</div>

									<div class="form-group row">
										<label for="usex" class="col-sm-2 col-form-label"><span
											style="float: right;">性别</span></label>
										<div class="col-sm-10">
											<input type="text" name="sex" class="form-control" id="usex"
												value="${userInfo.sex}">
										</div>
									</div>

									<div class="form-group row">
										<label for="umajor" class="col-sm-2 col-form-label"><span
											style="float: right;">专业</span></label>
										<div class="col-sm-10">
											<select class="custom-select mr-sm-2"
												id="inlineFormCustomSelect" name="major">
												<option value="计算机" ${userInfo.major=='计算机科学与技术'?'selected':''}>计算机科学与技术</option>
												<option value="软件工程" ${userInfo.major=='软件工程'?'selected':''}>软件工程</option>
												<option value="电子商务" ${userInfo.major=='电子商务'?'selected':''}>电子商务</option>
												<option value="Information Major" ${userInfo.major=='信息管理与信息系统'?'selected':''}>信息管理与信息系统</option>
											</select>
										</div>
									</div>

									<div class="form-group row">
										<label for="ustrong" class="col-sm-2 col-form-label"><span
											style="float: right;">特长</span></label>
										<div class="col-sm-10">
											<input type="text" name="strong" class="form-control"
												id="ustrong" value="${userInfo.strong}">
										</div>
									</div>

									<div class="form-group row">
										<label for="ubirth" class="col-sm-2 col-form-label"><span
											style="float: right;">出生年月</span></label>
										<div class="col-sm-10">
											<input type="date" name="birth" class="form-control"
												id="ubirth" value="${userInfo.birth}">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-10">
											<button type="submit" class="btn btn-primary">保存</button>
											<a href="UserList"><span class="btn btn-primary">返回</span></a>
										</div>
									</div>
								</form>
							</div>
							
							<img alt="userphoto" src="img/user/ua.jpg" style="width:30%;">

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