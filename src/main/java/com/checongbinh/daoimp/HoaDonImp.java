package com.checongbinh.daoimp;

import java.util.List;

import com.checongbinh.entity.HoaDon;

public interface HoaDonImp {
	int ThemHoaDon(HoaDon hoaDon);
	List<HoaDon> LayDanhSachHoaDon();
}
