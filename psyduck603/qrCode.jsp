<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<style>
.qrcard {
	padding: 18% 5% 10% 60%;
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

<title>QrCodeReq</title>
</head>
<body>
	<div class="container-fluid">
		<!-- 导航栏 -->
		<%@ include file="nav.jsp"%>

		<div class="row mt-3">
			<div class="col-sm-2">
				<%@ include file="leftnav.jsp"%>
			</div>

			<div class="col-sm">
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
									<input type="text" class="form-control" id="Qrinfo"
										name="Qrinfo" value="csnb">
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
			</div>
			
			<div class="col-sm-2"></div>
			
		</div>



		<!-- Begin page content -->
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>