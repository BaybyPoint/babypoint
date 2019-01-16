<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<!-- <meta http-equiv="refresh" content="3" />  -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Giỏ hàng</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="header.jsp" />
<link rel="stylesheet" type="text/css" media="screen"
	href="../resources/Styles/formatTrangChu.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="../resources/Styles/fomatChiTiet.css" />
</head>

<body>
	<div id="header_chitiet" class="container-fluid">


		<nav class="navbar navbar-default none-nav navbar-fixed-top"
			style="background: none; border: none;">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed btn_toggle"
					data-toggle="collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="../"><span
					style="font-family: 'Edwardian Script ITC'; color: #ffc000; font-size: 55px; padding-top: 20px;"><span
						style="color: #ff6699;">Baby</span>Point</span></a>
			</div>
			<div class="collapse navbar-collapse menu_toggle" id="myNavbar">
				<ul class="nav navbar-nav navbar-left " style="margin-left: 25%;">
					<li class="active"><a href="..">TRANG CHỦ</a></li>
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
							<li><a
								<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
								href="../dangnhap/"><span>${chucaidau}</span></a></li>
						</c:when>

						<c:otherwise>
							<li><a href="../dangnhap/">ĐĂNG NHẬP</a></li>
						</c:otherwise>
					</c:choose>
					<li><a style="margin-right: 19px;" href="#"><img
							style="height: 26px;" src="../resources/Image/giohang3.png" />
							<div class="circle-giohang"
								style="position: absolute; text-align: center; margin-top: -35px; line-height: 22px; margin-left: 14px; background: red; height: 18px; width: 18px; border-radius: 9px;">
								<span style="color: #7aff00;">${soluongsanphamgiohang }</span>
							</div></a></li>
				</ul>
			</div>
		</nav>

	</div>

	<div class="container" style="margin-top: 20px;">
		<div class="row">
			<div class="col-md-12">
				<h2>Danh sách sản phẩm trong giỏ hàng</h2>
				<table class="table">
					<thead>
						<tr>
							<td><h4>Tên sản phẩm</h4></td>
							<td><h4>Màu sản phẩm</h4></td>
							<td><h4>Size sản phẩm</h4></td>
							<td><h4>Số lượng</h4></td>
							<td><h4>Giá tiền</h4></td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="value" items="${giohangs }">
							<tr >
								<td class="tensp" data-masp="${value.getMasp()}">${value.getTensp()}</td>
								<td class="mau" data-mamau="${value.getMamau()}">${value.getTenmau() }</td>
								<td class="size" data-masize="${value.getMasize()}">${value.getTensize() }</td>
								<td class="soluong"><input class="soluong-giohang" min="1" type="number" value="${value.getSoluong()}" /></td>
								<td class="giatien" data-value ="${value.getGiatien()}">${value.getGiatien()} </td>
								<td><button class="xoa-giohang btn btn-danger">Xóa</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<h3 class="text-right ">Tổng tiền: <span  id="tongtien" style="color: red;"> ,000 </span> VND</h3>
				<p class="text-right" style="color: #ff6a00;" >* Nhận sản phẩm tại cửa hàng để được giảm giá 20% khi mua từ 2 sản phẩm trở lên</p>
				<p class="text-right" style="color: #ff6a00;" ><em>(reload lại trang để tránh rủi ro)</em> </p>
				<br/><p class="text-left" style="color: #ff0182;">*Gọi đặt hàng bằng cách gọi vào số 0947887886 hoặc inbox ở fanpage <a href="https://www.facebook.com/babypoint.hn"> https://www.facebook.com/babypoint.hn </a> để
				có được sự trả lời sớm nhất và tránh rủi ro khi gặp sự cố mạng</p>
			</div>
		</div>
		<div class="row">
			<h2>Thông tin người mua/nhận</h2>
			<form action="" method="post">
				<div class="form-group">
				
					<label for="tenkhachhang">Tên người mua</label>
					 <input class="form-control" id="tenkhachhang" name="tenkhachhang" /> <br /> 
					 
					 <label for="sodt">Số điện thoại liên lạc</label>
					 <input class="form-control"id="sodt" name="sodt" /><br /> 
						 
					 <label ><input checked="" type="radio" name="hinhthucgiaohang" value="Giao hàng tận nơi" />&#160;Giao hàng tận nơi</label><br /> 
					 <label><input type="radio" name="hinhthucgiaohang" value="Nhận hàng tại BaybyPoin gần nhất" />&#160;Nhận hàng tại BaybyPoin gần nhất</label><br /><br /> 
						 
					 <label for="diachigiaohang">Địa chỉ nhận hàng(không cần ghi nếu nhận hàng tại cửa hàng)</label> 
					 <input class="form-control" id="diachigiaohang" name="diachigiaohang" /> 
					
					 <br/><label for="ghichu">Ghi chú</label>
					 <textarea class="form-control" rows="5" id="ghichu" name="ghichu"></textarea><br/>
					 
					 <a href="#"><input type="submit" value="Đặt mua" class="btn btn-warning" style="float: right; width: 250px; height: 40px;
					 padding-top: 0;font-size: 28px;	" /></a>
				</div>
			</form>
		</div>
	</div>
	<!-- footer -->
	<div id="footer" class="container-fluid"
		style="margin-top: 42px; padding-bottom: 20px; background: #3c3236; color: white;">

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

	</div>


	<jsp:include page="footer.jsp" />
</body>
</html>
<!-- style="position: absolute;text-align: center;margin-top: -35px;line-height: 22px;margin-left: 14px;background: red;height: 18px;width: 18px;border-radius: 9px;" -->