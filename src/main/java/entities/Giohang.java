package entities;

import java.io.Serializable;

public class Giohang implements java.io.Serializable{
	
	private Hanghoa hanghoa;
	private int soluong;
	private int thanhtien;
	private String ghichu;
	public Hanghoa getHanghoa() {
		return hanghoa;
	}
	public void setHanghoa(Hanghoa hanghoa) {
		this.hanghoa = hanghoa;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}
	public String getGhichu() {
		return ghichu;
	}
	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	public Giohang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Giohang(Hanghoa hanghoa, int soluong, int thanhtien, String ghichu) {
		super();
		this.hanghoa = hanghoa;
		this.soluong = soluong;
		this.thanhtien = thanhtien;
		this.ghichu = ghichu;
	}
}
