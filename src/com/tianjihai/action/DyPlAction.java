package com.tianjihai.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
import com.tianjihai.dao.Dy;
import com.tianjihai.dao.DyPl;
import com.tianjihai.dao.User;
import com.tianjihai.serivce.DyPlService;
import com.tianjihai.serivce.DyService;

@Controller
public class DyPlAction {
	@Autowired 
	DyPlService dyplServiceImpl;

	@RequestMapping("dypl")
	public ModelAndView dypl() {
		ModelAndView mv = new ModelAndView();
		List<DyPl> list2 =dyplServiceImpl.selectAll();
		mv.addObject("list2", list2);
		mv.setViewName("dypl");
		return mv;
	}
	
	@RequestMapping("addpl")
	public ModelAndView addChuhuo(DyPl c) {
		dyplServiceImpl.insert(c);
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("redirect:/dypl");
		return mv;
	}
	
	@RequestMapping("plad")
	public ModelAndView plad() {
		ModelAndView mv = new ModelAndView();
		List<DyPl> list =dyplServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("plad");
		return mv;
	}
	
	@RequestMapping("delpl")
	public ModelAndView delpl(int mplid) {
		ModelAndView mv = new ModelAndView();
		dyplServiceImpl.deleteByPrimaryKey(mplid);
		mv.setViewName("redirect:/plad");
		return mv;
	}
	
 
}
