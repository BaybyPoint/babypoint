package com.checongbinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.checongbinh.dao.HinhSanPhamBoSungDAO;
import com.checongbinh.dao.SanPhamDAO;
import com.checongbinh.daoimp.HinhSanPhamBoSungImp;
import com.checongbinh.entity.HinhSanPhamBoSung;

@Service
public class HinhSanPhamBoSungService implements HinhSanPhamBoSungImp{

	@Autowired
	HinhSanPhamBoSungDAO hinhSanPhamBoSungDao;
	
	public List<HinhSanPhamBoSung> LayHinhSanPhamBoSungTheoMaSanPham(int masanpham) {
		
		return hinhSanPhamBoSungDao.LayHinhSanPhamBoSungTheoMaSanPham(masanpham);
	}

	
}
