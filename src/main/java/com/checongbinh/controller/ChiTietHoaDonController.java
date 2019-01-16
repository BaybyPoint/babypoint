package com.checongbinh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.checongbinh.entity.ChiTietHoaDon;
import com.checongbinh.service.ChiTietHoaDonService;

@Controller
@RequestMapping("/chitiethoadon")
public class ChiTietHoaDonController {

	@Autowired
	ChiTietHoaDonService chiTietHoaDonService;
	
	@GetMapping("/{mahoadon}")
	public String Default(@PathVariable int mahoadon, ModelMap map) {
		
		List<ChiTietHoaDon> listChiTietHoaDon = chiTietHoaDonService.LayDanhSachChiTietHoaDonTheoMaHoaDon(mahoadon);
		
		map.addAttribute("danhsachchitiethoadons",listChiTietHoaDon );
		
		return "chitiethoadon" ;
	}
	
}
