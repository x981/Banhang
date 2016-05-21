package entities;

// Generated May 21, 2016 10:13:33 AM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Tonkho generated by hbm2java
 */
@Entity
@Table(name = "Tonkho", catalog = "Banhang")
public class Tonkho implements java.io.Serializable {

	private int matk;
	private Kho kho;
	private Hanghoa hanghoa;
	private int malo;
	private int soluong;
	private String ghichu;

	public Tonkho() {
	}

	public Tonkho(int matk, Kho kho, Hanghoa hanghoa, int malo, int soluong) {
		this.matk = matk;
		this.kho = kho;
		this.hanghoa = hanghoa;
		this.malo = malo;
		this.soluong = soluong;
	}

	public Tonkho(int matk, Kho kho, Hanghoa hanghoa, int malo, int soluong,
			String ghichu) {
		this.matk = matk;
		this.kho = kho;
		this.hanghoa = hanghoa;
		this.malo = malo;
		this.soluong = soluong;
		this.ghichu = ghichu;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Matk", unique = true, nullable = false)
	public int getMatk() {
		return this.matk;
	}

	public void setMatk(int matk) {
		this.matk = matk;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Makho", nullable = false)
	public Kho getKho() {
		return this.kho;
	}

	public void setKho(Kho kho) {
		this.kho = kho;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Mahang", nullable = false)
	public Hanghoa getHanghoa() {
		return this.hanghoa;
	}

	public void setHanghoa(Hanghoa hanghoa) {
		this.hanghoa = hanghoa;
	}

	@Column(name = "Malo", nullable = false)
	public int getMalo() {
		return this.malo;
	}

	public void setMalo(int malo) {
		this.malo = malo;
	}

	@Column(name = "Soluong", nullable = false)
	public int getSoluong() {
		return this.soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	@Column(name = "Ghichu")
	public String getGhichu() {
		return this.ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

}