<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp" %>

<title>Res</title>
</head>
<body>

	<div class="container">

		<!-- 导航栏  -->
		<%@ include file="nav.jsp"%>

		<!-- 主页面 -->
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

				<div class="form-group row">
					<div class="col-sm-10">
						<button type="submit" class="btn btn-primary">Sign in</button>
					</div>
				</div>
			</form>

		</div>

		<!-- Begin page content -->
		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>