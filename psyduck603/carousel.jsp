<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div id="carousel" class="carousel slide" data-ride="carousel"
	data-interval="3000">

	<!-- 指示符 -->
	<ul class="carousel-indicators">
		<li data-target="#demo" data-slide-to="0" class="active"></li>
		<li data-target="#demo" data-slide-to="1"></li>
		<li data-target="#demo" data-slide-to="2"></li>
	</ul>

	<!-- 轮播图图片 -->
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="img/carousel/1.jpg">
		</div>
		<div class="carousel-item">
			<img src="img/carousel/2.jpg">
		</div>
		<div class="carousel-item">
			<img src="img/carousel/7.png">
		</div>
	</div>

	<!-- 左右切换按钮 -->
	<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
		class="carousel-control-prev-icon"></span>
	</a> <a class="carousel-control-next" href="#demo" data-slide="next"> <span
		class="carousel-control-next-icon"></span>
	</a>

</div>