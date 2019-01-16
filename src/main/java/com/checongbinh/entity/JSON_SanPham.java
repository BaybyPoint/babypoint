package com.checongbinh.entity;

import java.util.Set;

public class JSON_SanPham {

	int masanpham;
	DanhMucSanPham danhmucsanpham;
	
	String tensanpham, giatien, mota, hinhsanpham,danhcho ;
	Set<ChiTietSanPham> chitietsanpham;
	
	
	
	public int getMasanpham() {
		return masanpham;
	}
	public DanhMucSanPham getDanhmucsanpham() {
		return danhmucsanpham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public String getGiatien() {
		return giatien;
	}
	public String getMota() {
		return mota;
	}
	public String getHinhsanpham() {
		return hinhsanpham;
	}
	public String getDanhcho() {
		return danhcho;
	}
	public Set<ChiTietSanPham> getChitietsanpham() {
		return chitietsanpham;
	}
	public void setMasanpham(int masanpham) {
		this.masanpham = masanpham;
	}
	public void setDanhmucsanpham(DanhMucSanPham danhmucsanpham) {
		this.danhmucsanpham = danhmucsanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public void setGiatien(String giatien) {
		this.giatien = giatien;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public void setHinhsanpham(String hinhsanpham) {
		this.hinhsanpham = hinhsanpham;
	}
	public void setDanhcho(String danhcho) {
		this.danhcho = danhcho;
	}
	public void setChitietsanpham(Set<ChiTietSanPham> chitietsanpham) {
		this.chitietsanpham = chitietsanpham;
	}
	
	
}
