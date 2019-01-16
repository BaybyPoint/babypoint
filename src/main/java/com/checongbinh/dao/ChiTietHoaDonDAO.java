package com.checongbinh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.checongbinh.daoimp.ChiTietHoaDonImp;
import com.checongbinh.entity.ChiTietHoaDon;
import com.checongbinh.entity.ChiTietHoaDonId;
import com.checongbinh.entity.HinhSanPhamBoSung;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)	
public class ChiTietHoaDonDAO implements ChiTietHoaDonImp {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		Session session = sessionFactory.getCurrentSession();
		ChiTietHoaDonId id = (ChiTietHoaDonId) session.save(chiTietHoaDon);
		if(null != id ){
			return true;
		}else{
			return false;
		}
		
	}

	@Transactional
	public List<ChiTietHoaDon> LayDanhSachChiTietHoaDonTheoMaHoaDon(int mahoadon) {
		
		Session session = sessionFactory.getCurrentSession();
		String query = "from CHITIETHOADON where mahoadon="+ mahoadon;
		List<ChiTietHoaDon> listChiTietHoaDons = (List<ChiTietHoaDon>) session.createQuery(query).getResultList();

		return listChiTietHoaDons;
	}
	
}
