<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%@ include file="bootstrap.jsp"%>
<%@ include file="css.jsp"%>
<style>
#footer {
	text-align: center;
}

.qrcard {
	padding: 10% 5% 5% 60%;
}
</style>

<title>QrCodeRes</title>
</head>
<body>
	<div class="container-fluid">

		<%@ include file="nav.jsp"%>

		<div class="row mt-3">

			<div class="col-sm-2">
				<%@ include file="leftnav.jsp" %>
			</div>
			
			<div class="col-sm">
				<div class="qrcard">
					<div class="w-100">
						<div class="card-body card">
							<h5 class="card-title">The generated QR Code is as follows</h5>
							<!-- <img class="card-img-top" src="img/${imgname}" alt="QrCodr">  -->
							<img class="card-img-top"
								src="img/psyduck_csnb_20201027140010896.jpg" alt="QrCodr">
							<div class="card-body">
								<!-- <p class="card-text">PsyDuck进行转换的内容： ${codeinfo}</p>-->
								<p class="card-text">PsyDuck进行转换的内容：</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-sm-2">
			
			</div>
			
		</div>



		<!-- Begin page content -->

		<%@ include file="footer.jsp"%>

	</div>

</body>
</html>