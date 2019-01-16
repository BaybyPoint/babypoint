<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<!-- <meta http-equiv="refresh" content="3" />  -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sản Phẩm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="header.jsp" />
</head>
<body>

	<div id="header_chitiet" class="container-fluid">


		<nav class="navbar navbar-default none-nav navbar-fixed-top " style="background: none; border: none;">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="../"><span
					style="font-family: 'Edwardian Script ITC'; color: #ffc000; font-size: 55px; padding-top: 20px;"><span
					style="color: #ff6699;">Baby</span>Point</span></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left navbar-center">
					<li class="active"><a href="<c:url value="/"/>">TRANG CHỦ</a></li>
					<!-- Thuộc tính Active là để nó bôi trắng chữ trang chủ khi duyệt web -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">SẢN PHẨM <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<c:forEach var="value" items="${danhmuc }">
								<li style="margin:3px 0; font-size: 18px; font-weight: 400;"><a href="<c:url value="/sanpham/${value.getMadanhmuc() }/${value.getTendanhmuc() }"/>">${value.getTendanhmuc() }</a></li>
							</c:forEach>
						</ul></li>
					<li><a href="#">DỊCH VỤ</a></li>
					<li><a href="#">LIÊN HỆ</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${chucaidau != null }">
							<li><a class="circle-avartar" href="../dangnhap/"><span >${chucaidau}</span></a></li>
						</c:when>

						<c:otherwise>
							<li><a href="../dangnhap/">ĐĂNG NHẬP</a></li>
						</c:otherwise>
					</c:choose>
					<li><a style=" margin-right:10px;" href="../giohang/"><img style="height: 26px;"  src='<c:url value="/resources/Image/giohang3.png"/>' />
					<div class="circle-giohang" style="position: absolute;text-align: center;margin-top: -35px;line-height: 22px;margin-left: 14px;background: red;height: 18px;width: 18px;border-radius: 9px;">
					<span style="color: #7aff00;">${soluongsanphamgiohang }</span>
					</div></a></li>
				</ul>
			</div>
		</nav>

	</div>

	<div class="container" style="margin-top:20px;">
		<div class="row">
		
			<div class="col-sm-2 col-md-2 col-xs-3">
				<h3  >DANH MỤC</h3>
				<ul style="padding-left: 1px;" >
				<c:forEach var="value" items="${danhmuc }">
					<li class="danhmuc-sanpham"><a href="<c:url value="/sanpham/${value.getMadanhmuc() }/${value.getTendanhmuc() }"/>">${value.getTendanhmuc() }</a></li>
				</c:forEach>
				</ul>
			</div>

			<div class="col-sm-10 col-md-10 col-xs-9">
				
					<span style="color: #062ada; font-size: 30px;">${tendanhmuc }</span>
					<div id="title-product-sanpham" class="row" style="margin-top: 0px;">
						<c:forEach var="sanpham" items="${listSanPham }">
							<div  class="col-md-3 col-sm-4 col-xs-6">
								<a href="<c:url value="/chitiet/${sanpham.getMasanpham()}"/>">
									<div  class="product wow flipInX" id="product-height-product" data-wow-duration="1.5s">
										<img  src='<c:url value="/resources/Image/sanpham/${sanpham.getHinhsanpham() }"/>'
											alt="hinh" /> <span class="product-name">${sanpham.getTensanpham() }</span> 
											<span class="cost">${sanpham.getGiatien() },000 VND</span>
									</div>
								</a>
							</div>
						</c:forEach>
					</div>
				
			</div>
			
		
		</div>
	</div>

	<!-- footer -->
	<div id="footer" class="container-fluid" style="margin-top: 42px;padding-bottom: 20px;background: #3c3236;color: white;">

		<div class="row ">

			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center" style="font-size: 32px;">THÔNG TIN SHOP</p>
				<br /> <span>Yame là một thương hiệu thời trang đầy uy tín,
					luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng</span>
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center"  style="font-size: 32px;">LIÊN HỆ</p>
				<br /> <span>43 Nguyễn Trãi, Phường 12, Quận 5 TP Hồ Chí Minh</span>
				<span>minhhieudo03051998@gmail.com</span><br /> <span>0964285830</span><br />
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<p class="title-footer text-center"  style="font-size: 32px;">GÓP Ý</p>
				<br />
				<form action="" method="post">
					<input name="tenNhanVien" class="format-input" type="text" style=" width: 100%; background: #5d4e4e;"
						placeholder="Email" /><br />
					<textarea class="format-textarea" name="tuoi" id="#" cols="30" style="width: 100%;background: #5d4e4e;margin-top: 8px;"
						rows="4" placeholder="Ghi chú"></textarea>
					<br />
					<button class="format-button" style=" margin-top: 8px;width: 100%;background: #252424;">Đồng ý</button>
				</form>
			</div>

		</div>

	</div>




	<jsp:include page="footer.jsp" />


	

</body>
</html>


