package com.checongbinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.checongbinh.dao.SanPhamDAO;
import com.checongbinh.daoimp.SanPhamImp;
import com.checongbinh.entity.SanPham;

@Service
public class SanPhamService implements SanPhamImp {

	@Autowired
	SanPhamDAO sanPhamDao;

	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
		
		return sanPhamDao.LayDanhSachSanPhamLimit(spbatdau);
	}

	public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		return sanPhamDao.LayDanhSachChiTietSanPhamTheoMa(masanpham);
		
	}

	public List<SanPham> LayDanhSachSanPhamTheoMaDanhMuc(int madanhmuc) {
		
		return sanPhamDao.LayDanhSachSanPhamTheoMaDanhMuc(madanhmuc);
	}

	public boolean XoaSanPhamTheoMaSanPham(int masanpham) {
		return sanPhamDao.XoaSanPhamTheoMaSanPham(masanpham);
	}

	public boolean ThemSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		return sanPhamDao.ThemSanPham(sanPham);
	}

	public boolean CapNhatSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		return sanPhamDao.CapNhatSanPham(sanPham);
	}

	
	
	
}
