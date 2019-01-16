package com.checongbinh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.checongbinh.dao.SanPhamDAO;
import com.checongbinh.entity.SanPham;
import com.checongbinh.service.DanhMucService;
import com.checongbinh.service.SanPhamService;


@Controller
@RequestMapping("/timkiem")
public class TimSanPhamTheoMaController {
	
	@Autowired
	SanPhamService  sanPhamService;
	
	@GetMapping()
	public String Default( ModelMap map) {
		
		
		return "timkiem";
	}
	
	
	@PostMapping("/{masanphamtimkiem}") //
	public String TimKiemSanPhamTheoMa(@PathVariable int masanphamtimkiem, ModelMap map) { //@PathVariable int masanphamtimkiem,
		
		
		List<SanPham> listSanPham1 = (List<SanPham>) sanPhamService.LayDanhSachChiTietSanPhamTheoMa(masanphamtimkiem);
		
		map.addAttribute("listSanPham2",listSanPham1);
		
		return "timkiem";
	}

}
