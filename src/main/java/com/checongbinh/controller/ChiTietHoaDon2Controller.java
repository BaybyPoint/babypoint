package com.checongbinh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.checongbinh.dao.ChiTietSanPhamDAO;
import com.checongbinh.entity.ChiTietSanPham;
import com.checongbinh.entity.MauSanPham;
import com.checongbinh.entity.SizeSanPham;
import com.checongbinh.service.MauSanPhamService;
import com.checongbinh.service.SizeSanPhamService;

@Controller
@RequestMapping("/chitiethoadon2")
public class ChiTietHoaDon2Controller {
	
	@Autowired
	ChiTietSanPhamDAO  chiTietSanPhamDAO;
	
	@Autowired
	SizeSanPhamService sizeSanPhamService;

	@Autowired
	MauSanPhamService mauSanPhamService;
	
	@GetMapping("/{machitietsanpham}")
	public String Default(@PathVariable int machitietsanpham, ModelMap map) {
		
		List<ChiTietSanPham> chiTietSanPham =(List<ChiTietSanPham>) chiTietSanPhamDAO.LaySanPhamTheoMaChiTietSanPham(machitietsanpham);
		List<SizeSanPham> listSizeSanPhams =(List<SizeSanPham>) sizeSanPhamService.LayDanhSachSize();
		List<MauSanPham> listMauSanPhams =(List<MauSanPham>) mauSanPhamService.LayDanhSachMau();

		
		map.addAttribute("sanphamtheomachitiet",chiTietSanPham );
		map.addAttribute("danhsachsizesanpham",listSizeSanPhams );
		map.addAttribute("danhsachmausanpham",listMauSanPhams );
		
		return "chitiethoadon2";
	}

}
