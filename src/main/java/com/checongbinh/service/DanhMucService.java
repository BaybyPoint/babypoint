package com.checongbinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.checongbinh.dao.DanhMucDAO;
import com.checongbinh.dao.SanPhamDAO;
import com.checongbinh.daoimp.DanhMucImp;
import com.checongbinh.entity.DanhMucSanPham;

@Service
public class DanhMucService implements DanhMucImp {

	@Autowired
	DanhMucDAO danhMucDAO;
	
	public List<DanhMucSanPham> LayDanhMuc() {
		
		return danhMucDAO.LayDanhMuc();
	}
	
}
