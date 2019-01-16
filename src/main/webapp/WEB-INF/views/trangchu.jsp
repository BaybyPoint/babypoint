<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Trang Chủ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="header.jsp" />

<link rel="stylesheet" type="text/css" media="screen"
	href="resources/Styles/formatTrangChu.css" />
</head>
<body style="background: #fff5f7">

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
					<li class="active"><a href="#">TRANG CHỦ</a></li>
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
				<ul class="nav navbar-nav navbar-right">
	
					<c:choose>
						<c:when test="${chucaidau != null }">
							<li><a class="circle-avartar" href="dangnhap/"><span >${chucaidau}</span></a></li>
						</c:when>

						<c:otherwise>
							<li><a href="dangnhap/">ĐĂNG NHẬP</a></li>
						</c:otherwise>
					</c:choose>

					<li><a href="giohang/"><img style="height: 26px;  margin-right:5px;" alt="giỏ hàng"
							src="resources/Image/giohang1.png" /></a></li>
				</ul>
			</div>
		</nav>
		<div class="title text-center">
			<span>BABYPOINT-THIÊN ĐƯỜNG CHO BÉ</span><br />
		</div>

		<div class="event_header container wow shake text-center"
			data-wow-duration="4s">
			<span>Ngày 13/01- 23/01/2019</span><br /> <span
				style="font-size: 50px; font-family: 'Edwardian Script ITC'">
				Mua 1 tang 1</span><br />
			<button style="width: 120; height: 30;">Xem ngay</button>
		</div>
	</div>

	<div id="info" class="container-fluid ">
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
	</div>
	
	
	<!-- sản phẩm -->
	
	<div id="title-product" class="container underline_a">
		<span>SẢN PHẨM HOT</span>

		<div class="row">
		<c:forEach var= "sanpham" items="${listSanPham }">
			<div class="col-md-3 col-sm-4 col-xs-6">
			<a href="chitiet/${sanpham.getMasanpham()}">
				<div  class="product  wow flipInX" id="product-height"  data-wow-duration= "1.5s" >
					<img style="margin-left: 8%; margin-right: 8%;" src='<c:url value="/resources/Image/sanpham/${sanpham.getHinhsanpham() }"/>' alt="hinh" /> 
					<span>${sanpham.getTensanpham() }</span> <span class="cost">${sanpham.getGiatien() },000 VND</span>
				</div>
			</a>
			</div>
			
		</c:forEach>	

		</div>
	</div>	
	
	<!-- footer -->
	<div id="footer" class="container-fluid">

		<div class="row ">

			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center">THÔNG TIN SHOP</p>
				<br /><br/> <p> 🔹BabyPoint là một thương hiệu thời trang đầy uy tín,
					luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng</p> <br/>
					<p> 🔹BabyPoint cam kết chất lượng phục vụ tốt nhất, chuyên nghiệp nhất cho 
					mọi khách hàng bằng chính sách hoàn tiền và tặng quà nếu nhân viên phục vụ quí khách không chu đáo.</p>
					<br/><p> 🔹Nếu bạn gặp rắc rối về sản phẩm hay chất lượng dịch vụ của BabyPoint, hãy gọi ngay đến số 094 788 78 86 hoặc inbox ở 
					fanpage https://www.facebook.com/babypoint.hn/</p>
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center">ĐẢM BẢO HÀI LÒNG</p>
				<br /><br /> <P>Với hệ thống cửa hàng trải khắp trung tâm Hà Nội cho bạn mua sắm dễ dàng hơn</p>
				<p><a>Chính sách đổi trả</a></p>
				<p><a>Than phiền/Chăm sóc khách hàng</a></p>
				
				<div style="margin-top: 30px;">
					<a href="https://www.facebook.com/babypoint.hn"><img src="<c:url value="/resources/Image/icon-facebook.png"  />" /></a>
					<img src="<c:url value="/resources/Image/icon-google.png"  />" />
				</div>
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<div class="">
				
				<div class="text-center title-footer" >BabyPoint - Thiên Đường Cho Bé ❣</div>
				<div class="text-center" style="font-size: 22px;  " >☎ Hotline: 094 788 78 86</div> <br/>
				<br/><br/>💠 Địa Chỉ:<br/><br/>
				🔹 Cơ sở 1: 109A12 Nghĩa Tân, Tô Hiệu, Cầu Giấy, HN <br/>
				🔹 Cơ sở 2: Tầng 5 TTTM Lotte, 54 Liễu Giai, Ba Đình, Hà Nội<br/>
				🔹 Cơ sở 3: Tầng 2 & tầng G TTTM The Garden, đường Mễ Trì, phường Mỹ Đình 1, quận Nam Từ Liêm, Hà Nội<br/>
				🔹 Cơ sở 4: TTTM Robins, B1-R4 Royal City, Thanh Xuân, Hà Nội<br/>
				
				</div>
			
				<!-- <p class="title-footer text-center">GÓP Ý</p>
				<br />
				<form action="" method="post">
					<input name="tenNhanVien" class="format-input" type="text"
						placeholder="Email" /><br />
					<textarea class="format-textarea" name="tuoi" id="#" cols="30" 
						rows="4" placeholder="Ghi chú"></textarea>
					<br />
					<button class="format-button" >Đồng ý</button>
				</form> -->
			</div>

		</div>
		
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				
			</div>
		
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />

</body>
</html>


