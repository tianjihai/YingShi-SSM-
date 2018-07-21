package com.tianjihai.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tianjihai.dao.Dy; 
import com.tianjihai.serivce.DyService;
 
@Controller
public class DyAction {
	@Autowired
	DyService dyServiceImpl;
	
	@RequestMapping("dydetail")
	public ModelAndView dydetail(int id) {
		ModelAndView mv = new ModelAndView();
		List<Dy> list =dyServiceImpl.selectById(id);  
		mv.addObject("list", list); 
		mv.setViewName("dydetail"); 
		return mv;
	}
	
	@RequestMapping("dy")
	public ModelAndView dy() {
		ModelAndView mv = new ModelAndView();
		List<Dy> list =dyServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("dy");
		return mv;
	}
	
	@RequestMapping("dyad")
	public ModelAndView dyad() {
		ModelAndView mv = new ModelAndView();
		List<Dy> list =dyServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("dyad");
		return mv;
	}
	
	@RequestMapping("addm")
	public ModelAndView adddy(Dy c) {
		dyServiceImpl.insert(c);
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("redirect:/dyad");
		return mv;
	}
	
	@RequestMapping("del")
	public ModelAndView del(int id) {
		ModelAndView mv = new ModelAndView();
		dyServiceImpl.deleteByPrimaryKey(id);
		mv.setViewName("redirect:/dyad");
		return mv;
	}
	
	@RequestMapping("dyxg")
	public ModelAndView dyxg(int id) {
		ModelAndView mv = new ModelAndView();
		List<Dy> list =dyServiceImpl.selectById(id);  
		mv.addObject("list", list); 
		mv.setViewName("dyxg"); 
		return mv;
	}
	
	@RequestMapping("dyupdate")
	public ModelAndView dyupdate(Dy dy) {
		boolean ok=dyServiceImpl.updateDy(dy);
		Map<String,Object> model = new HashMap<String,Object>();
		
		ModelAndView mv = new ModelAndView();
		List<Dy> list =dyServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("dyad");
		return mv;
	}
	
}
