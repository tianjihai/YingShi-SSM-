package com.tianjihai.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tianjihai.dao.Dy;
import com.tianjihai.dao.DyPl;
import com.tianjihai.dao.Mu;
import com.tianjihai.serivce.DyPlService;
import com.tianjihai.serivce.DyService;
import com.tianjihai.serivce.MuService;

@Controller
public class MuAction {
	@Autowired
	MuService muServiceImpl; 
 
	@RequestMapping("mudetail")
	public ModelAndView mudetail(int yid) {
		ModelAndView mv = new ModelAndView();
		List<Mu> list =muServiceImpl.selectById(yid);  
		mv.addObject("list", list); 
		mv.setViewName("mudetail"); 
		return mv;
	}
	
	@RequestMapping("mu")
	public ModelAndView mu() {
		ModelAndView mv = new ModelAndView();
		List<Mu> list =muServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("mu");
		return mv;
	}
	
	@RequestMapping("musicad")
	public ModelAndView musicad() {
		ModelAndView mv = new ModelAndView();
		List<Mu> list =muServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("musicad");
		return mv;
	}
	
	@RequestMapping("addmu")
	public ModelAndView addmu(Mu c) {
		muServiceImpl.insert(c);
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("redirect:/musicad");
		return mv;
	}
	
	@RequestMapping("delmu")
	public ModelAndView del(int yid) {
		ModelAndView mv = new ModelAndView();
		muServiceImpl.deleteByPrimaryKey(yid);
		mv.setViewName("redirect:/musicad");
		return mv;
	}
	
	@RequestMapping("muxg")
	public ModelAndView muxg(int yid) {
		ModelAndView mv = new ModelAndView();
		List<Mu> list =muServiceImpl.selectById(yid);  
		mv.addObject("list", list); 
		mv.setViewName("muxg"); 
		return mv;
	}
	
	@RequestMapping("muupdate")
	public ModelAndView muupdate(Mu mu) {
		boolean ok=muServiceImpl.updateMu(mu);
		Map<String,Object> model = new HashMap<String,Object>();
		
		ModelAndView mv = new ModelAndView();
		List<Mu> list =muServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("musicad");
		return mv;
	}

	
}
