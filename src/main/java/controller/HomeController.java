package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.HanghoaModel;
import model.LoaiSpModel;
import model.SanphamModel;
import entities.*;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entities.Loaisanpham;

@Controller
public class HomeController {

	@RequestMapping(value = "/home.html", method = RequestMethod.GET)
	public String home(ModelMap mm, HttpServletRequest request) {
		SanphamModel spm = new SanphamModel();
		HanghoaModel hhm = new HanghoaModel();
		// mm.put("dssp", spm.findAll());
		request.getSession().setAttribute("dssp", spm.findAll());
		if (request.getSession().getAttribute("tiengiohang") == null) {
			request.getSession().setAttribute("tiengiohang", 0);
		}
		mm.put("dshh", hhm.findAll());
		request.getSession().setAttribute("buy", 1);
		return "home";
	}

	@RequestMapping(value = "/getlistitems/{maloai}", method = RequestMethod.GET)
	public String getlistitems(@PathVariable String maloai, ModelMap mm,
			HttpServletRequest request) {
		System.out.println("Controller");
		LoaiSpModel lspm = new LoaiSpModel();
		Loaisanpham lsp = lspm.find(Integer.parseInt(maloai));
		mm.put("dshh", lsp.getHanghoas());
		mm.put("lsp", lsp);
		request.getSession().setAttribute("buy", 1);
		return "products";
	}

	@RequestMapping(value = "/productdetail/{mahang}", method = RequestMethod.GET)
	public String productdetail(@PathVariable String mahang, ModelMap mm,
			HttpServletRequest request) {
		System.out.println("Controller detail");
		HanghoaModel hhm = new HanghoaModel();
		mm.put("h", hhm.find(Integer.parseInt(mahang)));
		mm.put("soluong", 15);
		mm.put("dshh", hhm.findAll());
		request.getSession().setAttribute("buy", 1);
		return "productdetail";
	}

	@RequestMapping(value = "/thanhtoan", method = RequestMethod.POST)
	public String thanhtoan(@RequestParam String mahang,
			@RequestParam String buy, ModelMap mm, HttpServletRequest request) {
		String checkbuy = request.getSession().getAttribute("buy") + "";
		if (buy.equalsIgnoreCase(checkbuy)) {
			HanghoaModel hhm = new HanghoaModel();
			Hanghoa hh = hhm.find(Integer.parseInt(mahang));
			List<Giohang> dschon = (List<Giohang>) request.getSession()
					.getAttribute("dschon");
			if (dschon == null) {
				dschon = new ArrayList<Giohang>();
				Giohang gh = new Giohang();
				gh.setHanghoa(hh);
				gh.setSoluong(1);
				gh.setThanhtien(hh.getGiaban() * 1);
				dschon.add(gh);
				request.getSession().setAttribute("dschon", dschon);
				request.getSession().setAttribute("tiengiohang",
						(hh.getGiaban()));
			} else {
				int mahangso = Integer.parseInt(mahang);
				int tiengiohang = 0;
				int flag = 0;
				for (Giohang gh1 : dschon) {
					if (gh1.getHanghoa().getMahang() == mahangso) {
						gh1.setSoluong(gh1.getSoluong() + 1);
						gh1.setThanhtien(gh1.getSoluong()
								* gh1.getHanghoa().getGiaban());
						flag = 1;
						break;
					}
				}
				if (flag == 0) {
					Giohang gh = new Giohang();
					gh.setHanghoa(hh);
					gh.setSoluong(1);
					gh.setThanhtien(hh.getGiaban() * 1);
					dschon.add(gh);
				}

				for (Giohang gh1 : dschon) {
					tiengiohang = tiengiohang + gh1.getThanhtien();
				}

				request.getSession().setAttribute("dschon", dschon);
				request.getSession().setAttribute("tiengiohang", tiengiohang);
			}
			request.getSession().setAttribute("buy", 0);
			return "thanhtoan";
		} else {
			return "xemgiohang";
		}
	}

	@RequestMapping(value = "/xemgiohang", method = RequestMethod.GET)
	public String xemgiohang(ModelMap mm, HttpServletRequest request) {
		List<Giohang> dschon = (List<Giohang>) request.getSession()
				.getAttribute("dschon");
		if (dschon != null) {
			int tiengiohang = 0;
			for (Giohang gh1 : dschon) {
				tiengiohang = tiengiohang + gh1.getThanhtien();
			}
			request.getSession().setAttribute("tiengiohang", tiengiohang);
		}

		return "xemgiohang";
	}
}