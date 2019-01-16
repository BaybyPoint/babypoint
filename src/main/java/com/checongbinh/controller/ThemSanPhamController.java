package com.checongbinh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.checongbinh.entity.DanhMucSanPham;
import com.checongbinh.entity.MauSanPham;
import com.checongbinh.entity.SanPham;
import com.checongbinh.entity.SizeSanPham;
import com.checongbinh.service.DanhMucService;
import com.checongbinh.service.MauSanPhamService;
import com.checongbinh.service.SanPhamService;
import com.checongbinh.service.SizeSanPhamService;

@Controller
@RequestMapping("/themsanpham")
public class ThemSanPhamController {

	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	DanhMucService danhMucService;
	
	@Autowired
	SizeSanPhamService sizeSanPhamService;
	
	@Autowired
	MauSanPhamService mauSanPhamService;
	
	@GetMapping 
	public String Default(ModelMap map) {
		
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(0);
		List<SanPham> allSanPham  = sanPhamService.LayDanhSachSanPhamLimit(-1);
		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
		List<SizeSanPham> listSizeSanPham = sizeSanPhamService.LayDanhSachSize();
		List<MauSanPham> listMauSanPham = mauSanPhamService.LayDanhSachMau();
		
		double tongsopage = Math.ceil( (double) allSanPham.size()/20) ;
		
		
		map.addAttribute("listSanPham",listSanPhams );
		map.addAttribute("allSanPham",allSanPham );
		map.addAttribute("tongsopage",tongsopage );
		map.addAttribute("danhmuc", danhMucSanPhams);
		map.addAttribute("listsize", listSizeSanPham);
		map.addAttribute("listmau", listMauSanPham);
		
		
		return "themsanpham";
	}
}
