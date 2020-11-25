<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<nav class="d-none d-md-block bg-light sidebar">
	<div class="sidebar-sticky">
		<ul class="nav flex-column">
			<li class="nav-item">
			<a class="nav-link ${nav_item == 'Index'?'text-warning active':'text-secondary'}" href="PsyDuck">
					<img src="img/yico/upside_down_face.png">1.Psyduck </a></li>
			<li class="nav-item">
			<a class="nav-link text-secondary ${nav_item == 'Login'?'text-warning active':'text-secondary'}" href="Login"> <img
					src="img/yico/face_savoring_food.png">2. 用户登入
			</a></li>
			<li class="nav-item"><a class="nav-link ${nav_item == 'Reg'?'text-warning active':'text-secondary'}" href="Reg">
					<img src="img/yico/face_with_monocle.png">3.用户注册
			</a></li>
			<li class="nav-item"><a class="nav-link ${nav_item == 'QrCode'?'text-warning active':'text-secondary'}" href="QrCode">
					<img src="img/yico/face_with_rolling_eyes.png">4.生成二维码
			</a></li>
			<li class="nav-item"><a class="nav-link  ${nav_item == 'UserList'?'text-warning active':'text-secondary'}" href="UserList">
					<img src="img/yico/confused_face.png">5.用户列表 </a></li>
			<li class="nav-item"><a class="nav-link  ${nav_item == 'LogList'?'text-warning active':'text-secondary'}" href="LogList">
					<img src="img/yico/confused_face.png">6.日志列表 </a></li>				
			<li class="nav-item"><a class="nav-link text-info" href="#">
					Integrations </a></li>
		</ul>

		<h6
			class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
			<span>个人信息</span> </a>
		</h6>
		<ul class="nav flex-column mb-2 text-secondary leftpd">
			<li class="nav-item">班级 ： 18软工2班</li>
			<li class="nav-item">姓名 ： 陈彬捷</li>
			<li class="nav-item">桌号 ： 19</li>
			<li class="nav-item">学号 ： 180110910603</li>
		</ul>
	</div>
</nav>
