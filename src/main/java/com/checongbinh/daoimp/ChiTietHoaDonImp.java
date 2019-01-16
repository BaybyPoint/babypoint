package com.checongbinh.daoimp;

import java.util.List;

import com.checongbinh.entity.ChiTietHoaDon;

public interface ChiTietHoaDonImp {
	boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
	List<ChiTietHoaDon> LayDanhSachChiTietHoaDonTheoMaHoaDon(int mahoadon);
}
