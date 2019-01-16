package com.checongbinh.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="CHITIETHOADON")
public class ChiTietHoaDon {
	
	@EmbeddedId
	ChiTietHoaDonId chitiethoadonid;	
	
	int soluong;
	String giatien;
	
	public ChiTietHoaDonId getChitiethoadonid() {
		return chitiethoadonid;
	}
	public int getSoluong() {
		return soluong;
	}
	public String getGiatien() {
		return giatien;
	}
	public void setChitiethoadonid(ChiTietHoaDonId chitiethoadonid) {
		this.chitiethoadonid = chitiethoadonid;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public void setGiatien(String giatien) {
		this.giatien = giatien;
	}

}
