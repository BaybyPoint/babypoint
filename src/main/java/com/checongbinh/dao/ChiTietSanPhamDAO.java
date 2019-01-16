package com.checongbinh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.checongbinh.daoimp.ChiTietSanPhamImp;
import com.checongbinh.entity.ChiTietHoaDon;
import com.checongbinh.entity.ChiTietSanPham;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietSanPhamDAO implements ChiTietSanPhamImp {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<ChiTietSanPham> LaySanPhamTheoMaChiTietSanPham(int machitietsanpham) {
		Session session = sessionFactory.getCurrentSession();
		String query = "from CHITIETSANPHAM where machitietsanpham="+ machitietsanpham;
		List<ChiTietSanPham> chitietsanpham1 = (List<ChiTietSanPham>) session.createQuery(query).getResultList();

		return chitietsanpham1;
	}
	
	

}
