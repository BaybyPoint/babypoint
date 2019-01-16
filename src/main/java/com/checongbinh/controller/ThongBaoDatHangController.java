package com.checongbinh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.checongbinh.entity.DanhMucSanPham;
import com.checongbinh.service.DanhMucService;

@Controller
@RequestMapping("thongbaodathang/")
public class ThongBaoDatHangController {

	@Autowired
	DanhMucService danhMucService;
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		
		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
		
		modelMap.addAttribute("danhmuc", danhMucSanPhams);
		
		return "thongbaodathang";
	}
}
