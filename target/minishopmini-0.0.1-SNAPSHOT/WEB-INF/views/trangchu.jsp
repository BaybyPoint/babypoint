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

    <link rel="stylesheet" type="text/css" media="screen" href="resources/Styles/formatTrangChu.css" />
</head>
<body>
    
    <div id="header" class="container-fluid">


            <nav class="navbar navbar-default none-nav navbar-fixed-top">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" >
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a  class="navbar-brand" href="#myPage"><span id="yameshop1"><img src="./resources/Image/yameshop1.png" /></span></a>
                    </div>
                    <div class="collapse navbar-collapse" id = "myNavbar">
                            <ul class = "nav navbar-nav navbar-left navbar-center" >
                                 <li class="active"><a href="#">TRANG CHỦ</a></li> <!-- Thuộc tính Active là để nó bôi trắng chữ trang chủ khi duyệt web -->
                                 <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">DANH MỤC
                                    <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                      <li><a href="#">THỜI TRANG NAM</a></li>
                                      <li><a href="#">THỜI TRANG NỮ</a></li>
                                      <li><a href="#">THỜI TRANG TRẺ EM</a></li>
                                    </ul>
                                  </li> 
                                <li><a href="#">DỊCH VỤ</a></li>
                                <li><a href="#">LIÊN HỆ</a></li>
                            </ul>
                            <ul class = "nav navbar-nav navbar-right">
                                <li><a href="#">ĐĂNG NHẬP</a></li>
                                <li><a href="#">ĐĂNG KÍ</a></li>
                                <li><a href="#"><img src="./resources/Image/giohang.png" /></a></li>
                            </ul>
                    </div>      
            </nav>
        

        <div class="event_header container wow shake text-center" data-wow-duration="4s">
            <span>Ngày 17/10- 23/10/2017</span><br/>
            <span style="font-size: 50px;"> Mua 1 tặng 1</span><br/> 
            <button style ="width : 120 ; height: 30;">Xem ngay</button>
        </div>
    </div>

    <div id="info" class="container-fluid">
        <div class="row">
            <div class="col-12 col-sm-4 col-md-4 text-center wow fadeInLeft" data-wow-duration="0.5s" >
                 <img src="./resources/Image/chatluong.png" /><br/><br/>
                <span style="font-size: 32px; font-weight: 500">CHẤT LƯỢNG</span><br/><br/>
                <span>Chúng tôi cam kết sẽ mang đến cho các bạn chất lượng sản phẩm tốt nhất</span>
            </div>
            <div class="col-12 col-sm-4 col-md-4 text-center wow bounceInDown" data-wow-duration="0.5s" data-wow-delay="0.3s">
                <img src="./resources/Image/conheo.jpg" /><br/><br/>
                <span style="font-size: 32px; font-weight: 500">TIẾT KIỆM CHI PHÍ</span><br/><br/>
                <span>Cam kết giá rẻ nhất Việt Nam giúp các bạn tiết kiệm hơn 20% cho từng sản phẩm</span>
            </div>
            <div class="col-12 col-sm-4 col-md-4 text-center wow fadeInRight" data-wow-duration="0.9s" data-wow-delay="0.7s">
                <img src="./resources/Image/giaohang.png" /><br/><br/>
                <span style="font-size: 32px; font-weight: 500">GIAO HÀNG</span><br/><br/>
                <span>Cam kết giao hàng tận nơi trong ngày.Để mang sản phẩm đến cho khách hàng nhanh nhất</span>
            </div>
        </div>
    </div>
<!-- sản phẩm -->
    <div id="title-product" class="container">
        <span>SẢN PHẨM HOT</span>

        <div class="row">

            <div class="col-md-3 col-sm-6">
                <div class="product wow flipInX" data-wow-duration="1.5s">
                        <img src="./resources/Image/hinhCaiAo.jpg" alt="hinh" />
                        <span >Áo sơ mi</span>
                        <span class="cost">550.000 VND</span>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                            <img src="./resources/Image/HinhAo5.jpg" alt="hinh" />
                            <span>Áo sơ mi</span>
                            <span class="cost">550.000 VND</span>
                    </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="product wow flipInX"data-wow-duration="1.5s">
                    <img src="./resources/Image/liverpool-18-19-home-kit-2-1.jpg" alt="hinh" />
                    <span>Áo sơ mi</span>
                    <span class="cost">550.000 VND</span>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="product wow flipInX"data-wow-duration="1.5s">
                    <img src="./resources/Image/HinhAo2.jpg" alt="hinh" />
                    <span>Áo sơ mi</span>
                    <span class="cost">550.000 VND</span>
                </div>
            </div>

        </div>
        <div class="row">

                <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                            <img src="./resources/Image/240eddab31e8b0ef1f2874b5216284e6.jpg" alt="hinh" />
                            <span >Áo sơ mi</span>
                            <span class="cost">550.000 VND</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                        <div class="product wow flipInX"data-wow-duration="1.5s">
                                <img src="./resources/Image/TB2MJXiIxSYBuNjSspjXXX73VXa_!!142722258.jpg_600x600.jpg" alt="hinh" />
                                <span>Áo sơ mi</span>
                                <span class="cost">550.000 VND</span>
                        </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                        <img src="./resources/Image/images (2).jpg" alt="hinh" />
                        <span>Áo sơ mi</span>
                        <span class="cost">550.000 VND</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                        <img src="./resources/Image/images.jpg" alt="hinh" />
                        <span>Áo sơ mi</span>
                        <span class="cost">550.000 VND</span>
                    </div>
                </div>
    
            </div>
            <div class="row">

            <div class="col-md-3 col-sm-6">
                <div class="product wow flipInX"data-wow-duration="1.5s">
                        <img src="./resources/Image/z582277928908_b437693e522ebad4662783e0dd6d4459-500x500.jpg" alt="hinh" />
                        <span >Áo sơ mi</span>
                        <span class="cost">550.000 VND</span>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                            <img src="./resources/Image/images%20(2).jpg" alt="hinh" />
                            <span>Áo sơ mi</span>
                            <span class="cost">550.000 VND</span>
                    </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="product wow flipInX"data-wow-duration="1.5s">
                    <img src="./resources/Image/b973b421aa5eea9f7cc22cbc981f5f0c.jpg" alt="hinh" />
                    <span>Áo sơ mi</span>
                    <span class="cost">550.000 VND</span>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="product wow flipInX"data-wow-duration="1.5s">
                    <img src="./resources/Image/HinhAo3.jpg" alt="hinh" />
                    <span>Áo sơ mi</span>
                    <span class="cost">550.000 VND</span>
                </div>
            </div>

        </div>
        <div class="row">

                <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                            <img src="./resources/Image/HinhAo4.jpg" alt="hinh" />
                            <span >Áo sơ mi</span>
                            <span class="cost">550.000 VND</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                        <div class="product wow flipInX"data-wow-duration="1.5s">
                                <img src="./resources/Image/xinh.png" alt="hinh" />
                                <span>Áo sơ mi</span>
                                <span class="cost">550.000 VND</span>
                        </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                        <img src="./resources/Image/ao-dan-nguc-cai-luoi-1496746170-1-2619130-1496746170.jpg" alt="hinh" />
                        <span>Áo sơ mi</span>
                        <span class="cost">550.000 VND</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="product wow flipInX"data-wow-duration="1.5s">
                        <img src="./resources/Image/a4.png" alt="hinh" />
                        <span>Áo sơ mi</span>
                        <span class="cost">550.000 VND</span>
                    </div>
                </div>
    
            </div>
    </div>
<!-- footer -->
    <div id="footer" class="container-fluid">

        <div class="row ">

            <div class="col-sm-4 col-md-4 wow tada">
                    <p class="title-footer text-center">THÔNG TIN SHOP</p><br/>
                <span>Yame là một thương hiệu thời trang đầy uy tín, luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng</span>
            </div>
            <div class="col-sm-4 col-md-4 wow tada">
                    <p class="title-footer text-center">LIÊN HỆ</p><br/>
                    <span>43 Nguyễn Trãi, Phường 12, Quận 5 TP Hồ Chí Minh</span>
                    <span>minhhieudo03051998@gmail.com</span><br/>
                    <span>0964285830</span><br/>
            </div>
            <div class="col-sm-4 col-md-4 wow tada">
                    <p class="title-footer text-center">GÓP Ý</p><br/>
                    <form action="" method="post">
                    	<input name="tenNhanVien" class="format-input" type="text" placeholder="Email" /><br/>
                    	<textarea class="format-textarea" name="tuoi" id="#" cols="30" rows="4" placeholder="Ghi chú"></textarea><br/>
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