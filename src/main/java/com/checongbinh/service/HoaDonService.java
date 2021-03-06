package com.checongbinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.checongbinh.dao.HoaDonDAO;
import com.checongbinh.daoimp.HoaDonImp;
import com.checongbinh.entity.HoaDon;

@Service
public class HoaDonService implements HoaDonImp {
	
	@Autowired
	HoaDonDAO hoaDonDAO;

	
	public int ThemHoaDon(HoaDon hoaDon) {
		return hoaDonDAO.ThemHoaDon(hoaDon);
	}


	public List<HoaDon> LayDanhSachHoaDon() {
		
		return hoaDonDAO.LayDanhSachHoaDon();
	}
	
	
}
