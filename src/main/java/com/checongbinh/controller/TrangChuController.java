package com.checongbinh.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.KeyStore.Entry.Attribute;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.checongbinh.entity.DanhMucSanPham;
import com.checongbinh.entity.SanPham;
import com.checongbinh.service.DanhMucService;
import com.checongbinh.service.NhanVienService;
import com.checongbinh.service.SanPhamService;

import org.hibernate.Session;

@Controller
@RequestMapping("/")
public class TrangChuController {

	@Autowired
	SanPhamService nhanvienService1;
	
	@Autowired
	DanhMucService danhMucService;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap, HttpSession httpSession) {

		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
		
		if (httpSession.getAttribute("user") != null) {
			String email = (String) httpSession.getAttribute("user");
			String chucaidau = email.substring(0, 1);
			modelMap.addAttribute("chucaidau", chucaidau);
		}
			
		List<SanPham> listSanPhams = nhanvienService1.LayDanhSachSanPhamLimit(0);
		modelMap.addAttribute("listSanPham", listSanPhams);
		modelMap.addAttribute("danhmuc", danhMucSanPhams);
		
		return "trangchu";
	}

}

// á»©ng vá»›i 1 chá»©c nÄƒng thÃ¬ sáº½ lÃ  1 controller xá»­ lÃ½, vÃ­ dá»¥ nhÆ° Ä‘Äƒng nháº­p thÃ¬ Ä‘á»ƒ page dangnhapController nÃ³ xá»­ lÃ½.

//Khi trang web Ä‘c load, trang chá»§ sáº½ Ä‘c gá»�i ra thÃ¬ @RequestMapping("/") sáº½ Ä‘c gá»�i, vÃ o trong nÃ³ sáº½ gá»�i giÃ¡ trá»‹ máº·c
// Ä‘á»‹nh lÃ  @GetMapping ( vÃ¬ @RequestMapping bao gá»“m @GetMapping)
// náº¿u ta truyá»�n tham sá»‘ vÃ o sau link, thÃ¬ @GetMapping("/{hoten}") sáº½ cháº¡y, do cÃ³ tham sá»‘ lÃ  biáº¿m hoten

/*
 * @GetMapping("/{hoten}") public String NhanThamSo(@PathVariable String hoten,
 * ModelMap modelMap) { modelMap.addAttribute("hoten",hoten); return "trangchu";
 * }
 * 
 * NhanVien nv = new NhanVien(); nv.setTennhanvien("Che Cong Binh 0");
 * nv.setTuoi(18);
 * 
 * NhanVien nv1 = new NhanVien(); nv1.setTennhanvien("Che Cong Binh 1");
 * nv1.setTuoi(21);
 * 
 * List<NhanVien> list = new ArrayList<NhanVien>();
 * 
 * list.add(nv); list.add(nv1);
 * 
 * modelMap.addAttribute("listNhanvien", list);
 */
//ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
//
//DatabaseThoiTrang databaseThoiTrang = (DatabaseThoiTrang) context.getBean("databasethoitrang");
//
////DatabaseThoiTrang data = new DatabaseThoiTrang();
//databaseThoiTrang.getListNhanVien();

/*
 * Session session = sessionFactory.getCurrentSession() ; String sql =
 * "from NhanVien"; // giá»‘ng nhÆ° nÃ y á»Ÿ trong sql: select * from NhanVien:
 * List<NhanVien> list = session.createQuery(sql).getResultList();
 * 
 * for(NhanVien nv : list) { System.out.println("Ten nhan vien: "+
 * nv.getTenNhanVien()); }
 */
//@Autowired
// SessionFactory sessionFactory ; // gÃ¡n biáº¿n nÃ y báº±ng sessionFactory
// bÃªn bean luÃ´n.
/*
 * Session session = sessionFactory.getCurrentSession(); nhanvien nhanvien = new
 * nhanvien(tenNhanVien , tuoi); session.save(nhanvien);
 */
