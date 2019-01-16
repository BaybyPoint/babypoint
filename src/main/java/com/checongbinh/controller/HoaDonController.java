package com.checongbinh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.checongbinh.entity.HoaDon;
import com.checongbinh.service.HoaDonService;

@Controller
@RequestMapping("hoadon/")
public class HoaDonController {
	
	@Autowired
	HoaDonService hoaDonService;

	@GetMapping
	public String Default(ModelMap map) {
		
		List<HoaDon> listHoaDons = hoaDonService.LayDanhSachHoaDon();
		
		map.addAttribute("danhsachhoadon",listHoaDons );
		
		return "hoadon";
	}
	
	
}
