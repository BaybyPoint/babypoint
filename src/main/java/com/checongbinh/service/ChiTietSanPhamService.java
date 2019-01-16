package com.checongbinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.checongbinh.dao.ChiTietSanPhamDAO;
import com.checongbinh.daoimp.ChiTietSanPhamImp;
import com.checongbinh.entity.ChiTietSanPham;

@Service
public class ChiTietSanPhamService implements ChiTietSanPhamImp{

	@Autowired
	ChiTietSanPhamDAO chiTietSanPhamDAO ;
	
	
	public List<ChiTietSanPham> LaySanPhamTheoMaChiTietSanPham(int machitietsanpham) {
		return chiTietSanPhamDAO.LaySanPhamTheoMaChiTietSanPham(machitietsanpham);
	}
	
	
}
