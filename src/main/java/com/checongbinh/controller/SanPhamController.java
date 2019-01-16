package com.checongbinh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.checongbinh.entity.DanhMucSanPham;
import com.checongbinh.entity.SanPham;
import com.checongbinh.service.DanhMucService;
import com.checongbinh.service.SanPhamService;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {

	@Autowired
	DanhMucService danhMucService;
	
	@Autowired
	SanPhamService sanPhamService;
	
	@GetMapping("/{id}/{tendanhmuc}")
	@Transactional
	public String Default(ModelMap modelMap, HttpSession httpSession,@PathVariable int id,@PathVariable String tendanhmuc) {
		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamTheoMaDanhMuc(id);
		
		
		modelMap.addAttribute("danhmuc", danhMucSanPhams);
		modelMap.addAttribute("tendanhmuc", tendanhmuc);
		modelMap.addAttribute("listSanPham", listSanPhams);
		
		
		return "sanpham";
	}
	
}
