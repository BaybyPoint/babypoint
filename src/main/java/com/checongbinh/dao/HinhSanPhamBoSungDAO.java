package com.checongbinh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.checongbinh.daoimp.HinhSanPhamBoSungImp;
import com.checongbinh.entity.HinhSanPhamBoSung;
import com.checongbinh.entity.SanPham;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HinhSanPhamBoSungDAO implements HinhSanPhamBoSungImp{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<HinhSanPhamBoSung> LayHinhSanPhamBoSungTheoMaSanPham(int masanpham) {
		Session session = sessionFactory.getCurrentSession();
		String query = "from HINHSANPHAMBOSUNG where masanpham="+ masanpham;
		List<HinhSanPhamBoSung> listSanPhamBoSungs = (List<HinhSanPhamBoSung>) session.createQuery(query).getResultList();

		return listSanPhamBoSungs;
	}

}
