package com.tianjihai.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tianjihai.dao.Dm; 
import com.tianjihai.serivce.DmService; 

@Controller
public class DmAction {
	@Autowired
	DmService dmServiceImpl;
 
	
	@RequestMapping("dmdetail")
	public ModelAndView dmdetail(int did) {
		ModelAndView mv = new ModelAndView();
		List<Dm> list =dmServiceImpl.selectById(did);
		mv.addObject("list", list);
		mv.setViewName("dmdetail");
		return mv;
	}
	
	@RequestMapping("dm")
	public ModelAndView dm() {
		ModelAndView mv = new ModelAndView();
		List<Dm> list =dmServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("dm");
		return mv;
	}
	
	@RequestMapping("dmad")
	public ModelAndView dmad() {
		ModelAndView mv = new ModelAndView();
		List<Dm> list =dmServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("dmad");
		return mv;
	}
	
	@RequestMapping("addl")
	public ModelAndView addl(Dm c) {
		dmServiceImpl.insert(c); 
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("redirect:/dmad");
		return mv;
	}
	
	@RequestMapping("deldm")
	public ModelAndView deldm(int did) {
		ModelAndView mv = new ModelAndView();
		dmServiceImpl.deleteByPrimaryKey(did);
		mv.setViewName("redirect:/dmad");
		return mv;
	}
	
	@RequestMapping("dmxg")
	public ModelAndView dmxg(int did) {
		ModelAndView mv = new ModelAndView();
		List<Dm> list =dmServiceImpl.selectById(did);  
		mv.addObject("list", list); 
		mv.setViewName("dmxg"); 
		return mv;
	}
	
	@RequestMapping("dmupdate")
	public ModelAndView dmupdate(Dm dm) {
		boolean ok=dmServiceImpl.updateDm(dm);
		Map<String,Object> model = new HashMap<String,Object>();
		ModelAndView mv = new ModelAndView();
		List<Dm> list =dmServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("dmad");
		return mv;
	}

}
