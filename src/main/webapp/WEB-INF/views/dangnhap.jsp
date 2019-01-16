<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập BabyPoint</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="header.jsp" />
</head>
<body id="body-login">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>

			<div class="col-md-4" id="container-login-left">
				<div id="header-left" class="header-login">
					<span id="text-logo">WELCOME</span> <br /> <span
						id="hind-text-logo">Hãy tạo nên phong cách cho con bạn tại
						YameShop !!!</span><br />
				</div>
				<div id="header-bottom-left">
					<%-- cách gọi img chuẩn <img alt="icon_oval" src = '<c:url value = "../resources/Image/vitri.png" />' />  --%>

					<p>
						<img src="../resources/Image/vitri.png" /><span>Luôn cập
							nhật xu hướnng thời trang mới nhất</span>
					</p>
					<p>
						<img src="../resources/Image/vitri.png" /><span>Giảm hơn
							50% các mặt hàng dành cho khách vip</span>
					</p>
					<p>
						<img src="../resources/Image/vitri.png" /><span>Tận tình tư
							vấn để tạo phong cách riêng cho bạn</span>
					</p>
				</div>
			</div>

			<div class="col-md-4" id="container-login-right">
				<div id="header-top-right" class="header-login">
					<span class="actived" id="dangnhap">Đăng nhập</span> / <span
						id="dangki">Đăng kí</span>
				</div>

				<div id="container-center-login-right">
					<div id=" container-center-login-right"
						class="container-login-form">
						<input name="email" id="email"
							class="material-textinput input-icon-email" type="email"
							placeholder="Email" /> <br />
						<p></p>
						<input name="matkhau" id="matkhau"
							class="material-textinput input-icon-password" type="password"
							placeholder="Mật khẩu" /><br /> <input onclick="loginsubmit()"
							id="btnDangNhap" class="material-primary-button" type="submit"
							value=" Đăng nhập" /><br />
						<p></p>
					</div>
					<div id=" container-center-login-right"
						class="container-signup-form">
						<form action="" method="post">
						<input name="email" id="email"
							class="material-textinput input-icon-email" type="email"
							placeholder="Email" /> <br />
						<p></p>
						<input name="matkhau" id="matkhau"
							class="material-textinput input-icon-password" type="password" placeholder="Mật khẩu" /><br />
						<p></p>
						<input name="nhaplaimatkhau" id="nhaplaimatkhau"
							class="material-textinput input-icon-password" type="password"
							placeholder="Nhập Lại Mật khẩu" /><br /> 
							<input
							class="material-primary-button" type="submit" value="Đăng kí" /><br />
						</form>
					</div>
				</div>
				<span id="ketqua"></span>

				<div id="container-social-login">
					<img src="<c:url value="/resources/Image/icon-facebook.png"  />" />
					<img src="../resources/Image/icon-facebook.png" /> 
					<img src="../resources/Image/icon-google.png" />

				</div>


			</div>
			<div class="col-md-2"></div>

		</div>

	</div>

	<div class="container  text-center">
		<p
			style="color: aqua; font-size: 20px; margin-top: 10px; text-align: center;">
			${kiemtradangnhap}</p>
	</div>


	<jsp:include page="footer.jsp" />
</body>


</html>














