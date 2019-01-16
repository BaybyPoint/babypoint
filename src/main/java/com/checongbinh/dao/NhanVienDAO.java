 package com.checongbinh.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.checongbinh.daoimp.NhanVienImp;
import com.checongbinh.entity.NhanVien;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)  // bật trạng thái proxy cho class này
public class NhanVienDAO implements NhanVienImp{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean KiemTraDangNhap(String email, String matkhau) {
		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nhanvien = (NhanVien) session.createQuery("from NHANVIEN where email = '"+ email +"' AND matkhau='"+ matkhau +"'").getSingleResult();	
			if(nhanvien != null) {
				return true;
			}else {
				return false;
			}
		}catch(Exception e)
		{
			return false;
		}
	}

	@Transactional
	public boolean ThemNhanVien(NhanVien nhanVien) {
		Session session = sessionFactory.getCurrentSession();
		int manhanvien =  (Integer) session.save(nhanVien);
		if(manhanvien > 0) {
			
			return true	;
		}else {
			return false;
		}
		
		
	}
	
	

}
