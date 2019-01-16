/*...........................................................................*/
$(document).ready(function() {
	$("#cot1").click(function() {
		var a = $("#cot1").attr("data-text");/* attr: lấy attribuid */
		alert(a);

	});
/*.........dùng thư viện wow..................................................................*/
	new WOW().init();
/*........nhấn button ở đt...................................................................*/
	$('.btn_toggle').on('click', function() {
		$('.menu_toggle').toggle();
	})
/*..........xử lý đăng nhập.................................................................*/
	$("#btnDangNhap").click(function() {
		var email = $("#email").val();
		var password = $("#matkhau").val();

		$.ajax({
			url : "/minishop/api/KiemTraDangNhap",
			type : "GET",
			data : {
				email : email,
				matkhau : password
			},
			success : function(value) {
				if (value == "true") {
					duongdanhientai = window.location.href;
					if(email == "huongthinguyen@gmail.com"){
						duongdan = duongdanhientai.replace("/dangnhap", "/trangchu1");
					}else{
						duongdan = duongdanhientai.replace("/dangnhap", "");
					}
					
					window.location = duongdan;
				} else {
					$("#ketqua").text("Đăng nhập thất bại !!!")
				}
			}
		})
	});
	/*........xử lý đăng kí đăng nhập bên trang đăng nhập...................................................................*/
	$("#dangnhap").click(function() {
		$(this).addClass("actived");
		$("#dangki").removeClass("actived")
		$(".container-signup-form").css("display", "none");
		$(".container-login-form").show();
	});

	$("#dangki").click(function() {
		$(this).addClass("actived");
		$("#dangnhap").removeClass("actived")
		$(".container-signup-form").show();
		$(".container-login-form").hide();
	});
	/*........xử lý nut gio hang...................................................................*/
	
	$(".btn-giohang").click(function() {
		var machitiet = $(this).attr("data-machitiet");
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var tenmau = $(this).closest("tr").find(".mau").text();
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var tensize = $(this).closest("tr").find(".size").text();
		var soluong=  $(this).closest("tr").find(".soluong").text();
		var tensp = $(".tensp").text();
		var masp = $(".tensp").attr("data-masp");
		var giatien = $("#giatien").attr("data-value");
			
		$.ajax({
			url : "/minishop/api/ThemGioHang",
			type : "GET",
			data : {
				machitiet: machitiet,
				masp : masp,
				masize : masize,
				mamau : mamau,
				tensp :  tensp,
				giatien: giatien,
				tenmau: tenmau,
				tensize: tensize,
				soluong: soluong
			},
			success : function(value) {
				
			}
		}).done(function(){    // ajax chạy xong thì thực hiện hàm
			$.ajax({
				url : "/minishop/api/LaySoLuongGioHang",
				type : "GET",
				success : function(value) {
					$(".circle-giohang").html("<span>" + value+"</span>");
				}
			})
		});
	});	
	
	
	GanTongTienGioHang(); // khi vào trang nó sẽ chạy luôn
	
	function GanTongTienGioHang(isEventChange){
		var tongtiensp = 0;
		$(".giatien").each(function(){   // nhiệm vụ là thêm 3 số 0 vào cuối tiền tệ
			var giatien = $(this).attr("data-value");
			var soluong = $(this).closest("tr").find(".soluong-giohang").val();
			
			var tongtien = parseFloat(giatien)* parseFloat(soluong);
			
			var format = parseFloat(tongtien).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
			
			tongtiensp = tongtiensp + tongtien;	
			
			if(!isEventChange){
				$(this).html(format);
			}
			
			var formatTongtiensp = tongtiensp.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
			$("#tongtien").html(formatTongtiensp+"");
			
		})
	}

	$(".soluong-giohang").change(function(){
		var soluong = $(this).val();
		var giatien = $(this).closest("tr").find(".giatien").attr("data-value");
		var tongtien = soluong * parseInt(giatien);
 		var format = tongtien.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
	
		$(this).closest("tr").find(".giatien").html(format);
		GanTongTienGioHang(true);
		
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var masp = $(this).closest("tr").find(".tensp").attr("data-masp");

		
		$.ajax({
			url : "/minishop/api/CapNhatGioHang",
			type : "GET",
			data : {
				masp : masp,
				masize : masize,
				mamau : mamau,
				soluong: soluong
			},
			success : function(value) {
				
			}
		})
	})
	
	$(".xoa-giohang").click(function(){
		var self = $(this);
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var masp = $(this).closest("tr").find(".tensp").attr("data-masp");
		
		$.ajax({
			url : "/minishop/api/XoaGioHang",
			type : "GET",
			data : {
				masp : masp,
				masize : masize,
				mamau : mamau,
				
			},
			success : function(value) {
				self.closest("tr").remove();
				GanTongTienGioHang(true);
			}
		})
	})
	
		

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
})























