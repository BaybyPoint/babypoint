<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>QUẢN TRỊ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="header.jsp" />

<link rel="stylesheet" type="text/css" media="screen"
	href="resources/Styles/formatTrangChu.css" />
</head>
<body>

	<div id="header" class="container-fluid underline_a">

		<nav class="navbar navbar-default none-nav navbar-fixed-top">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed btn_toggle"
					data-toggle="collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<span
					style="font-family: 'Edwardian Script ITC'; color: #ffc000; font-size: 55px; padding-top: 20px;"><span
					style="color: #ff6699;">Baby</span>Point</span>
			</div>
			<div class="collapse navbar-collapse menu_toggle" id="myNavbar">
				<ul class="nav navbar-nav navbar-left navbar-center">
					<li class="active"><a href="<c:url value="/"/>">TRANG CHỦ</a></li>
					<!-- Thuộc tính Active là để nó bôi trắng chữ trang chủ khi duyệt web -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">SẢN PHẨM <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<c:forEach var="value" items="${danhmuc }">
								<li  style="margin:3px 0; font-size: 18px; font-weight: 400;"><a href="<c:url value="/sanpham/${value.getMadanhmuc() }/${value.getTendanhmuc() }"/>">${value.getTendanhmuc() }</a></li>
								<li role="separator"></li>
							</c:forEach>
 						</ul></li>
					<li><a href="#">DỊCH VỤ</a></li>
					<li><a href="#">LIÊN HỆ</a></li>
				</ul>
				<%-- <ul class="nav navbar-nav navbar-right">
	
					<c:choose>
						<c:when test="${chucaidau != null }">
							<li><a class="circle-avartar" href="dangnhap/"><span >${chucaidau}</span></a></li>
						</c:when>

						<c:otherwise>
							<li><a href="dangnhap/">ĐĂNG NHẬP</a></li>
						</c:otherwise>
					</c:choose>

					
				</ul> --%>
			</div>
		</nav>
		<div class="title text-center">
			<span>BABYPOINT-THIÊN ĐƯỜNG CHO BÉ</span>
		</div>
		<center><h1 style="margin-top: 0; color:red;">TRANG QUẢN TRỊ</h1></center>
		<center><a href="<c:url value="../dashboard/" />" style="color:white;"><button style=" background: red; width: 140px; height:40px; "  > Manger</button></a></center>
		
	</div>

	<!-- <div id="info" class="container-fluid ">
		<div class="row">
			<div class="col-12 col-sm-4 col-md-4 text-center wow fadeInLeft"
				data-wow-duration="0.5s">
				<img src="./resources/Image/chatluong.png" /><br />
				<br /> <span style="font-size: 32px; font-weight: 500">CHẤT
					LƯỢNG</span><br />
				<br /> <span>Chúng tôi cam kết sẽ mang đến cho các bạn chất 
					lượng sản phẩm tốt nhất</span>
			</div>
			<div class="col-12 col-sm-4 col-md-4 text-center wow bounceInDown"
				data-wow-duration="0.5s" data-wow-delay="0.3s">
				<img src="./resources/Image/conheo.jpg" /><br />
				<br /> <span style="font-size: 32px; font-weight: 500">TIẾT
					KIỆM CHI PHÍ</span><br />
				<br /> <span>Cam kết giá rẻ nhất Việt Nam giúp các bạn tiết
					kiệm hơn 20% cho từng sản phẩm</span>
			</div>
			<div class="col-12 col-sm-4 col-md-4 text-center wow fadeInRight"
				data-wow-duration="0.9s" data-wow-delay="0.7s">
				<img src="./resources/Image/giaohang.png" /><br />
				<br /> <span style="font-size: 32px; font-weight: 500">GIAO
					HÀNG</span><br />
				<br /> <span>Cam kết giao hàng tận nơi trong ngày.Để mang sản
					phẩm đến cho khách hàng nhanh nhất</span>
			</div>
		</div>
	</div> -->
	
	
	<!-- sản phẩm -->
	
	<%-- <div id="title-product" class="container underline_a">
		<span>SẢN PHẨM HOT</span>

		<div class="row">
		<c:forEach var= "sanpham" items="${listSanPham }">
			<div class="col-md-3 col-sm-4 col-xs-6">
			<a href="chitiet/${sanpham.getMasanpham()}">
				<div class="product wow flipInX" data-wow-duration= "1.5s" >
					<img src='<c:url value="/resources/Image/sanpham/${sanpham.getHinhsanpham() }"/>' alt="hinh" /> 
					<span>${sanpham.getTensanpham() }</span> <span class="cost">${sanpham.getGiatien() },000 VND</span>
				</div>
			</a>
			</div>
			
		</c:forEach>	

		</div>
	</div>	 --%>
	
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
					<button class="format-button" >Đồng ý</button>
				</form>
			</div>

		</div>
	
	</div>
	
	<jsp:include page="footer.jsp" />

</body>
</html>


