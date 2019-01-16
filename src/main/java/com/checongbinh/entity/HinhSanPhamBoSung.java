package com.checongbinh.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="HINHSANPHAMBOSUNG")
public class HinhSanPhamBoSung {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int mahinhsanpham;
	
	@OneToOne( )
	@JoinColumn(name="masanpham")
	SanPham sanpham;
	
	String hinhsanphambosung;

	public int getMahinhsanpham() {
		return mahinhsanpham;
	}

	public SanPham getSanpham() {
		return sanpham;
	}

	public String getHinhsanphambosung() {
		return hinhsanphambosung;
	}

	public void setMahinhsanpham(int mahinhsanpham) {
		this.mahinhsanpham = mahinhsanpham;
	}

	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}

	public void setHinhsanphambosung(String hinhsanphambosung) {
		this.hinhsanphambosung = hinhsanphambosung;
	}
}
