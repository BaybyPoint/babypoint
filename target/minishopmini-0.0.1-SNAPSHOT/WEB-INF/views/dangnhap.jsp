<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta http-equiv = "Content-Type" content ="text/html; charset=UTF-8">
<title>Minh hieu</title>

<jsp:include page="header.jsp" /> 
</head>
<body id="body-login">
	<div id="body-flex-login">
		<div id="container-login">
			
			<div id="container-login-left">
				
				<div id="header-left" class="header-login">
					<span id="text-logo" >WELCOME</span> <br/>
					<span id="hind-text-logo">Hay tao nen phong cach cua ban tai MiniShop !!!</span><br/>
				</div>

				<div id="header-bottom-left">
					<%-- cách gọi img chuẩn <img alt="icon_oval" src = '<c:url value = "../resources/Image/vitri.png" />' />  --%>
					
					<p><img src="../resources/Image/vitri.png"/><span>Luon cap nhat xu huong thoi trang moi nhat</span></p> 
					<p><img src="../resources/Image/vitri.png"/><span>Giam hon 50% tat ca cac mat hang danh cho khach vip</span></p>
					<p><img src="../resources/Image/vitri.png"/><span>Tan tinh tu van de tao phong cach rieng cho ban</span></p>
				</div>
			</div>
			
			<div id="container-login-right" >
				<div id="header-top-right" class="header-login">
					<span class="actived" >Đăng nhập</span> / <span>Đăng kí</span>
				</div>
				<div id= "container-center-login-right">
					<form action="">
						<input id="input-icon-email" class="material-textinput" type="text" placeholder="Email" /> <br/>
						<input id="input-icon-password" class="material-textinput" type="password" placeholder="Mat khau" /><br/>
						<input class="material-primary-button" type="submit" value=" Dang nhap"/><br/>
					</form>
				</div>
				
				<div id="container-social-login">
					<img src="../resources/Image/fb1.png"/>
					<img src="../resources/Image/G+.png"/>
				
				</div>
				
			</div>
			
		</div>
	</div>

<jsp:include page="footer.jsp" /> 	
</body>


</html>














