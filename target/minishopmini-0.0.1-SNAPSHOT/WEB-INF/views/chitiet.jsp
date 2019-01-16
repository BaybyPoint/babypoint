<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<!-- <meta http-equiv="refresh" content="3" />  -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Trang Chủ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="header.jsp" />

<%--     <link rel="stylesheet" href="<c:url value="https://raw.githubusercontent.com/daneden/animate.css/master/animate.css"/>" />  --%>
<!-- <link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" /> -->

<link rel="stylesheet" type="text/css" media="screen"
	href="resources/Styles/formatTrangChu.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/Styles/fomatChiTiet.css" />
</head>
<body>

	<div id="header_chitiet" class="container-fluid">


		<nav class="navbar navbar-default none-nav navbar-fixed-top">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage"><span id="yameshop1"><img
						src="./resources/Image/yameshop1.png" /></span></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left navbar-center">
					<li class="active"><a href="#">TRANG CHỦ</a></li>
					<!-- Thuộc tính Active là để nó bôi trắng chữ trang chủ khi duyệt web -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">DANH MỤC <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">THỜI TRANG NAM</a></li>
							<li><a href="#">THỜI TRANG NỮ</a></li>
							<li><a href="#">THỜI TRANG TRẺ EM</a></li>
						</ul></li>
					<li><a href="#">DỊCH VỤ</a></li>
					<li><a href="#">LIÊN HỆ</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">ĐĂNG NHẬP</a></li>
					<li><a href="#">ĐĂNG KÍ</a></li>
					<li><a href="#"><img src="./resources/Image/giohang.png" /></a></li>
				</ul>
			</div>
		</nav>

	</div>

	<div class="container">
		<div class="row">

			<div class="col-sm-2 col-md-2">
				<h3>Danh mục sản phẩm</h3>
				<ul>
					<li>ao sơ mi</li>
					<li>áo khoác</li>
					<li>quần</li>
					<li>quần dài</li>
				</ul>
			</div>
			<div class="col-sm-8 col-md-8">
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<img style="height: 300px;" src="./resources/Image/hinhCaiAo.jpg"
					alt="hinh" />
					</div>
					<div class="col-sm-8 col-md-8">
						<h3>Sơ mi nam No Styles TN 001</h3>
						<h4>185.000</h4>
						<table>
							<tbody>
								<tr>
									<td>dfg</td>
									<td>ghj</td>
									<td>fghj</td>
									<td>fghj</td>
								</tr>

							</tbody>
						</table>

					</div>
				</div>

			</div>
			<div class="col-sm-2 col-md-2">
				<span>Mô tả ạ ag h g s gý h tsh y hy dt z srg yd h s h ryd h
					s </span>
			</div>

		</div>

	</div>

	<!-- footer -->
	<div id="footer" class="container-fluid">

		<div class="row ">

			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center">THÔNG TIN SHOP</p>
				<br /> <span>Yame là một thương hiệu thời trang đầy uy tín,
					luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng</span>
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center">LIÊN HỆ</p>
				<br /> <span>43 Nguyễn Trãi, Phường 12, Quận 5 TP Hồ Chí Minh</span>
				<span>minhhieudo03051998@gmail.com</span><br /> <span>0964285830</span><br />
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center">GÓP Ý</p>
				<br />
				<form action="" method="post">
					<input name="tenNhanVien" class="format-input" type="text"
						placeholder="Email" /><br />
					<textarea class="format-textarea" name="tuoi" id="#" cols="30"
						rows="4" placeholder="Ghi chú"></textarea>
					<br />
					<button class="format-button">Đồng ý</button>
				</form>
			</div>

		</div>

	</div>



	<jsp:include page="footer.jsp" />


	<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script> -->
	<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script> -->

	<!-- <script  src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js" ></script> -->
	<!-- <script href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script> -->

</body>
</html>


<!-- <c:forEach items ="${listNhanvien}" var="nv" >               // dùng để in ra list.
			<c:out value = "${nv.getTennhanvien()}"/> <br/>
		</c:forEach> 
		
		
		
-->