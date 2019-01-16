package com.checongbinh.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/trangchu1")
public class DangNhapAdminController {

	@GetMapping
	public String Default() {
		
		return "trangchu1";
	}
	
	
}
