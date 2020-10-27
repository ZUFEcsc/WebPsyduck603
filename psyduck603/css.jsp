<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<style>
.carousel{
	width: 100%;
	height: 100%;
}

.carousel-inner img {
	width: 100%;
	height: 100%;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.logincard {
	position: absolute;
	right: 20px;
	width: 300px;
	bottom: 400px;
}

#codeimg {
	margin: -2px 0px 4px 0px;
}

#footer {
	text-align: center;
}

.qrcard {
	background: url(img/10.jpg) center;
}

.bgimg {
	position: relative;
	width: 100%;
	display: block;
}

input[type=range] {
	margin-top: 8px;
	outline: none;
	-webkit-appearance: none; /*清除系统默认样式*/
	width: 100% !important;
	background: -webkit-linear-gradient(#ffc107, #ffc107) no-repeat, #ddd;
	background-size: 33% 100%; /*设置左右宽度比例*/
	height: 3px; /*横条的高度*/
}

/*拖动块的样式*/
input[type=range]::-webkit-slider-thumb {
	-webkit-appearance: none; /*清除系统默认样式*/
	height: 16px; /*拖动块高度*/
	width: 16px; /*拖动块宽度*/
	background: #f8f9fa; /*拖动块背景*/
	border-radius: 50%; /*外观设置为圆形*/
	border: solid 1px #ddd; /*设置边框*/
}

.leftpd{
	padding-left:25px;
}
</style>