<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE HTML>
<html>
<head>
<title>SẢN PHẨM </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" type='text/css' href= '<c:url value="/resources/css/bootstrap.min.css" />'/>

<!-- Custom CSS -->
<link rel="stylesheet" type='text/css' href= '<c:url value="/resources/css/style.css" />'/>
<link rel="stylesheet" type='text/css' href= '<c:url value="/resources/css/morris.css" />'/>
<!-- Graph CSS -->
<link rel="stylesheet" type='text/css' href= '<c:url value="/resources/css/font-awesome.css" />'/>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" type='text/css' href= '<c:url value="/resources/css/icon-font.min.css" />'/>
<!-- //lined-icons -->
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	<div class="row">
		<h3 style="color: #030ae2;margin-left: 14px; ">Sản phẩm</h3>
		
		<div class="col-md-4 col-sm-12 from-group">
		<form action="" id="form-sanpham">
			<!-- <label for="masanpham" >Mã sản phẩm</label> <br/>
			<input id="masanpham" class="form-control" name="masanpham" type="text" placeholder="Nhập vào mã sản phẩm" /><br/> -->
		
			<label for="tensanpham" >Tên sản phẩm</label> <br/>
			<input id="tensanpham" class="form-control" name="tensanpham" type="text" placeholder="Nhập vào tên sản phẩm" /><br/>
			
			<label for="giatien" >Giá tiền</label> <br/>
			<input id="giatien" class="form-control" name="giatien" type="number" placeholder="Nhập vào giá tiền" /><br/>
			
			<span style="font-weight: bold;">Dành cho : </span> <br/>
			<label>
				<input type="radio" id="rd-nam" name="danhcho" value="nam" /> NAM 
			</label>
			<label>
				<input type="radio" id="rd-nu" name="danhcho" value="nu" /> NỮ </label><br/><br/> 
			
			<label for="danhmucsanpham">Danh mục </label>
			<select name="danhmucsanpham" class="form-control" id="danhmucsanpham">
				<c:forEach var="valuedanhmuc" items="${danhmuc }">
					<option value="${valuedanhmuc.getMadanhmuc()}" >${valuedanhmuc.getTendanhmuc()}</option>
				</c:forEach>

			</select><br/>
			
			<label for="mota" >Mô tả</label> <br/>
			<textarea id="mota" class="form-control" name="mota" type="text" rows="5" placeholder="Nhập vào mô tả" > </textarea><br/>
			
			<label for="hinhanh" >Hình ảnh</label> <br/>
			<input id="hinhanh" class="form-control" name="hinhanh" type="file"  /><br/>
			
			
			
			<div id="containerchitietsanpham">
				<div class="chitietsanpham">
			
				<h3 style="color: #030ae2;">Chi tiết sản phẩm</h3><br/>
				<label for="mausanpham">Màu sản phẩm </label>
				<select name="mausanpham" class="form-control" id="mausanpham">
					<c:forEach var="valuemau" items="${listmau }">
						<option value="${valuemau.getMamau()}" >${valuemau.getTenmau()}</option>
					</c:forEach>
				</select><br/>
			
				<label for="sizesanpham">Size sản phẩm </label>
				<select name="sizesanpham" class="form-control" id="sizesanpham">
					<c:forEach var="valuesizesanpham" items="${listsize }">
						<option value="${valuesizesanpham.getMasize()}" >${valuesizesanpham.getSize()}</option>
					</c:forEach>
				</select><br/>
			
				<br/><label for="soluong" >Số lượng</label> <br/>
				<input min="1" value="1" id="soluong" class="form-control" name="soluong" type="number" placeholder="Nhập vào số lượng" /><br/>
				
				<button class="btn btn-primary btn-chitiet" style="margin-left:83%;">thêm</button>
				</div>
			</div>
			</form>
			
			<div id="chitietsanpham" class="chitietsanpham">
			
				<h3 style="color: #030ae2;">Chi tiết sản phẩm</h3><br/>
				<label for="mausanpham">Màu sản phẩm </label>
				<select name="mausanpham" class="form-control" id="mausanpham">
					<c:forEach var="valuemau" items="${listmau }">
						<option value="${valuemau.getMamau()}" >${valuemau.getTenmau()}</option>
					</c:forEach>
				</select><br/>
			
				<label for="sizesanpham">Size sản phẩm </label>
				<select name="sizesanpham" class="form-control" id="sizesanpham">
					<c:forEach var="valuesizesanpham" items="${listsize }">
						<option value="${valuesizesanpham.getMasize()}" >${valuesizesanpham.getSize()}</option>
					</c:forEach>
				</select><br/>
			
				<br/><label for="soluong" >Số lượng</label> <br/>
				<input id="soluong" min="1" value="1" class="form-control" name="soluong" type="number" /><br/>
				
				<button min="1" value="1" class="btn btn-primary btn-chitiet" style=" margin-left:83%;">thêm</button>
			</div>
			
			<style>
				#chitietsanpham {
					display: none !important;
				}
			
			</style>
			
			
			
			
			
			
			<div><button id="btnThemSanPham" class="btn btn-info " style="margin-bottom: 10px; margin-top: 30px; margin-right:20%; ">Thêm sản phẩm</button>
			<button id="btnCapNhatSanPham" class="btn btn-warning hidden" style="margin-bottom: 30px; margin-right:20%; ">Cập nhật</button><br/>
			 <button id="btnThoat" class="btn btn-danger hidden " style="margin-bottom: 150px; margin-right:20%; ">Thoát</button></div>
			 
		</div>
		
		<div class="col-md-8 col-sm-12">
		<div style="float: right;">
			<button id="xoasanpham" class="btn btn-danger ">Xóa</button>
		</div>
		
		<table class=" table" id="table-sanpham">
			<thead>
				<tr>
					<td><div  class="checkbox" style="margin-top: 0;" value=""><label><input id="checkall" type="checkbox"/>All	</label></div></td>
					<td>Mã sản phẩm</td>
					<td>Tên sản phẩm</td>
					<td>Giá tiền</td>
					<td>Gianh cho</td>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="value" items="${listSanPham }">
					<tr>
						<td><div class="checkbox" style="margin-top: 0;" value=""><label><input value="${value.getMasanpham()}" class="checkboxsanpham" type="checkbox"/></label></div></td>
						<td class="tensp"">${value.getMasanpham()}</td>
						<td class="tensp" data-masp="${value.getMasanpham()}">${value.getTensanpham()}</td>
						<td class="giatien" data-value ="${value.getGiatien()}">${value.getGiatien()} </td>
						<td class="danhcho" data-value ="${value.getDanhcho()}">${value.getDanhcho()} </td>
						<td style="color: white" class="btn btn-warning capnhatsanpham" data-id="${value.getMasanpham() }">Sửa</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<ul class="pagination pagination-sm" style="margin-left: 10%;">
			<c:forEach var= "i" begin="1" end="${tongsopage }">
			
				<c:choose>
					<c:when test="${i == 1 } ">
						<li class="paging-item active"><a href="#">${i }</a></li>
					</c:when>
					
					<c:otherwise>
						<li class="paging-item"><a href="#">${i }</a></li>
					</c:otherwise>
					
				</c:choose>
		
			</c:forEach>
		</ul>
		</div>
	</div>
         	  
</div>		
 <script type="text/javascript">
 
 	var masanpham = 0;
 
 $("body").on("click",".paging-item",function(){
	 	$(".paging-item").removeClass("active"); //xóa active của số trang
	 	$(this).addClass("active");
		var sotrang = $(this).text();
		var spbatdau = 5*(sotrang -1) ;
		$.ajax({
			url : "/minishop/api/LaySanPhamLimit",
			type : "GET",
			data : {
				spbatdau: spbatdau,
				
			},
			success : function(value) {
				var tbodysanpham = $("#table-sanpham").find("tbody");
				tbodysanpham.empty();
				tbodysanpham.append(value);
			}
		})
	})
	
	$("#checkall").change(function(){
		if(this.checked){
			$("#table-sanpham input").each(function(){
				$(this).attr("checked",true);
			})
		}else{
			$("#table-sanpham input").each(function(){
				$(this).attr("checked",false);
			})
		}
	})
	
	$("#xoasanpham").click(function(){
		$("#table-sanpham > tbody input:checked").each(function(){
			var masanpham = $(this).val();
			var This = $(this);
			This.closest("tr").remove();
			
			$.ajax({
				url : "/minishop/api/XoaSanPham",
				type : "GET",
				
				data : {
					masp: masanpham,
					
				},
				success : function(value) {
					This.closest("tr").remove();
				}
			})
		})
	})
	
	
	var files =[];
    var tenhinh = "";
	$("#hinhanh").change(function(event){
		files = event.target.files;   // lấy đc file ảnh mà người dùng vừa chọn
		tenhinh = files[0].name;
		forms = new FormData();
		forms.append("file",files[0]);
		
		$.ajax({
			url : "/minishop/api/UploadFile",
			type : "POST",   // dùng post bởi vì khi ta đưa dữ liệu từ forms cho apicontrol, nó sẽ ở dạng byte, mà byte thì rất nhiều ký tự
								// trong khi đó get lại hạn chế ký tự, nên ta phải dùng post
			
			data : forms,
			contentType: false,
			processData: false,   // bảo nó là ko cần xử lý forms, mà chuyển luôn cho apicontrol
			enctype: "multipart/form-data",
			success : function(value) {
				
			}
		})
	})
	
	$("body").on("click", ".btn-chitiet",function(){
		$(this).remove();
		var chitietclone = $("#chitietsanpham").clone().removeAttr("id");
		
		$("#containerchitietsanpham").append(chitietclone);
	})
	
	$("#btnThemSanPham").click(function(event){
		event.preventDefault();                               // ngăn chặn reload trang web đó
		var formdata = $("#form-sanpham").serializeArray();   // hàm này lấy tất cả value trong thẻ form (lấy của input) 
		
		json = {};
		arraychitiet = [];
		
		$.each(formdata, function(i,field){
			json[field.name] = field.value;
			
		});
		
		$("#containerchitietsanpham > .chitietsanpham").each(function(){
			objectchitiet = {};
			mausanpham = $(this).find('#mausanpham').val();
			sizesanpham = $(this).find('#sizesanpham').val();
			soluong = $(this).find('#soluong').val();
			
			objectchitiet["mausanpham"] = mausanpham;
			objectchitiet["sizesanpham"] = sizesanpham;
			objectchitiet["soluong"] = soluong;
			
			arraychitiet.push(objectchitiet);
		})
		
		json["chitietsanpham"] = arraychitiet;
		json["hinhsanpham"] = tenhinh;
		
		$.ajax({
			url : "/minishop/api/themsanpham",
			type : "POST",   // dùng post bởi vì khi ta đưa dữ liệu từ forms cho apicontrol, nó sẽ ở dạng byte, mà byte thì rất nhiều ký tự
								// trong khi đó get lại hạn chế ký tự, nên ta phải dùng post
			
			data :{
				dataJson: JSON.stringify(json)
			},
			success : function(value) {
				
			}
		})
	})
	
	
	$("#btnCapNhatSanPham").click(function(){
		event.preventDefault();                               // ngăn chặn reload trang web đó
		var formdata = $("#form-sanpham").serializeArray();   // hàm này lấy tất cả value trong thẻ form (lấy của input) 
		
		json = {};
		arraychitiet = [];
		
		$.each(formdata, function(i,field){
			json[field.name] = field.value;
			
		});
		
		$("#containerchitietsanpham > .chitietsanpham").each(function(){
			objectchitiet = {};
			mausanpham = $(this).find('#mausanpham').val();
			sizesanpham = $(this).find('#sizesanpham').val();
			soluong = $(this).find('#soluong').val();
			
			objectchitiet["mausanpham"] = mausanpham;
			objectchitiet["sizesanpham"] = sizesanpham;
			objectchitiet["soluong"] = soluong;
			
			arraychitiet.push(objectchitiet);
		})
		
		
		json["masanpham"] = masanpham;
		json["chitietsanpham"] = arraychitiet;
		json["hinhsanpham"] = tenhinh;
		
		$.ajax({
			url : "/minishop/api/capnhatsanpham",
			type : "POST",   // dùng post bởi vì khi ta đưa dữ liệu từ forms cho apicontrol, nó sẽ ở dạng byte, mà byte thì rất nhiều ký tự
								// trong khi đó get lại hạn chế ký tự, nên ta phải dùng post
			
			data :{
				dataJson: JSON.stringify(json)
			},
			success : function(value) {
				
			}
		})
	})
	
	
	$("body").on("click",".capnhatsanpham",function(){
		masanpham = $(this).attr("data-id");
		
		
		$("#btnCapNhatSanPham").removeClass("hidden");
		$("#btnThoat").removeClass("hidden");
		$("#btnThemSanPham").addClass("hidden");
		
		
		$.ajax({
			url : "/minishop/api/LayDanhSachSanPhamTheoMa",
			type : "POST",   
			
			data :{
				masanpham: masanpham
			},
			success : function(value) {
				console.log(value);
				$("#tensanpham").val(value.tensanpham) ;   // value là dữ liệu đc trả ra
				$("#giatien").val(value.giatien) ;
				$("#mota").val(value.mota) ;
				if(value.danhcho === "Nu        " || value.danhcho === "nu        " || value.danhcho === "nữ        " || value.danhcho === "Nữ        " || value.danhcho === "nu" ||  value.danhcho === "Nu" || value.danhcho === "nữ" || value.danhcho === "Nữ"  ){
					$("#rd-nu").prop("checked",true) ;
				}else{
					$("#rd-nam").prop("checked",true) ;
				}
				
				$("#danhmucsanpham").val(value.danhmucsanpham.madanhmuc);
				
				
				$("#containerchitietsanpham").html("");  // cho nó trống === empty();
				
				
				countchitiet = value.chitietsanpham.length;
				for(i=0; i < countchitiet; i++){
					
					var chitietclone = $("#chitietsanpham").clone().removeAttr("id");
					
					if(i < countchitiet-1){
						chitietclone.find(".btn-chitiet").remove();
					}
					
					
					chitietclone.find("#mausanpham").val(value.chitietsanpham[i].mausanpham.mamau);
					chitietclone.find("#sizesanpham").val(value.chitietsanpham[i].sizesanpham.masize);
					chitietclone.find("#soluong").val(value.chitietsanpham[i].soluong);
					
					$("#containerchitietsanpham").append(chitietclone);
				}
				
				
				
				
				
			}
		})
	})
	
	
	
	
	
	
</script> 	 
  <!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu" >
										<li><a href="<c:url value="/"/>"><i class="fa fa-tachometer"></i> <span>Home</span><div class="clearfix"></div></a></li>
										
										
										 <li id="menu-academico" ><a href="<c:url value="/themsanpham/"/>"><i class="fa fa-envelope nav_icon"></i><span>Product</span><div class="clearfix"></div></a></li>
									<li><a href="<c:url value="/hoadon/"/>"><i class="fa fa-picture-o" aria-hidden="true"></i><span>The Bill</span><div class="clearfix"></div></a></li>
									<li id="menu-academico" ><a href="charts.html"><i class="fa fa-bar-chart"></i><span>Charts</span><div class="clearfix"></div></a></li>
									 <li id="menu-academico" ><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i><span> Short Codes</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="icons.html">Icons</a></li>
											<li id="menu-academico-avaliacoes" ><a href="typography.html">Typography</a></li>
											<li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
										  </ul>
										</li>
									<li id="menu-academico" ><a href="errorpage.html"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i><span>Error Page</span><div class="clearfix"></div></a></li>
									  <li id="menu-academico" ><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i><span> UI Components</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="button.html">Buttons</a></li>
											<li id="menu-academico-avaliacoes" ><a href="grid.html">Grids</a></li>
										  </ul>
										</li>
									 <li><a href="tabels.html"><i class="fa fa-table"></i>  <span>Tables</span><div class="clearfix"></div></a></li>
									<li><a href="maps.html"><i class="fa fa-map-marker" aria-hidden="true"></i>  <span>Maps</span><div class="clearfix"></div></a></li>
							        <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i>  <span>Pages</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										 <ul id="menu-academico-sub" >
											<li id="menu-academico-boletim" ><a href="calendar.html">Calendar</a></li>
											<li id="menu-academico-avaliacoes" ><a href="signin.html">Sign In</a></li>
											<li id="menu-academico-avaliacoes" ><a href="signup.html">Sign Up</a></li>
											

										  </ul>
									 </li>
									<li><a href="#"><i class="fa fa-check-square-o nav_icon"></i><span>Forms</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
									  <ul>
										<li><a href="input.html"> Input</a></li>
										<li><a href="validation.html">Validation</a></li>
									</ul>
									</li>
								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src='<c:url value="/resources/JS/custom.js" />' > </script>

<script src='<c:url value="/resources/JS/jquery.nicescroll.js" />' > </script>
<script src='<c:url value="/resources/JS/scripts.js" />' > </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src='<c:url value="/resources/JS/bootstrap.min.js" />' > </script>
   <!-- /Bootstrap Core JavaScript -->	   
<!-- morris JavaScript -->	
<script src='<c:url value="/resources/JS/raphael-min.js" />' > </script>
<script src='<c:url value="/resources/JS/morris.js" />' > </script>

<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2014 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2014 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2014 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2014 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2015 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2015 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2015 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2015 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2016 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
				{period: '2016 Q2', iphone: 8442, ipad: 5723, itouch: 1801}
			],
			lineColors:['#ff4a43','#a2d200','#22beef'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
</body>
</html>