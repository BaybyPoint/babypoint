package com.checongbinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.checongbinh.dao.NhanVienDAO;
import com.checongbinh.daoimp.NhanVienImp;
import com.checongbinh.entity.NhanVien;
import com.checongbinh.entity.SanPham;

@Service
public class NhanVienService implements NhanVienImp{

	@Autowired
	NhanVienDAO nhanvienDAO;
	
	public boolean KiemTraDangNhap(String email, String matkhau) {
		boolean kiemtra = nhanvienDAO.KiemTraDangNhap(email, matkhau);
		return kiemtra;
	}

	public boolean ThemNhanVien(NhanVien nhanVien) {
		boolean ktThem = nhanvienDAO.ThemNhanVien(nhanVien);
		
		
		return ktThem;
	}
	
	
}
