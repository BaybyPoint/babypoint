package com.checongbinh.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="CHITIETSANPHAM")
public class ChiTietSanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int machitietsanpham;
	
	@OneToOne( )
	@JoinColumn(name="masanpham")
	SanPham sanpham;
	
	@OneToOne( )
	@JoinColumn(name="masize")
	SizeSanPham sizesanpham;
																// bảng chi tiết sản phẩm ko bao h đc định cascade 
	@OneToOne( )
	@JoinColumn(name="mamau")
	MauSanPham mausanpham;
	
	public int getMachitietsanpham() {
		return machitietsanpham;
	}
	public void setMachitietsanpham(int machitietsanpham) {
		this.machitietsanpham = machitietsanpham;
	}
	public ChiTietSanPham() {
		super();
	}
	public ChiTietSanPham(int machitietsanpham, SanPham sanpham, SizeSanPham sizesanpham, MauSanPham mausanpham,
			int soluong, String ngaynhap) {
		super();
		this.machitietsanpham = machitietsanpham;
		this.sanpham = sanpham;
		this.sizesanpham = sizesanpham;
		this.mausanpham = mausanpham;
		this.soluong = soluong;
		this.ngaynhap = ngaynhap;
	}
	public SanPham getSanpham() {
		return sanpham;
	}
	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}
	public SizeSanPham getSizesanpham() {
		return sizesanpham;
	}
	public void setSizesanpham(SizeSanPham sizesanpham) {
		this.sizesanpham = sizesanpham;
	}
	public MauSanPham getMausanpham() {
		return mausanpham;
	}
	public void setMausanpham(MauSanPham mausanpham) {
		this.mausanpham = mausanpham;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(String ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	int soluong;
	String ngaynhap;
	
	
	
}
