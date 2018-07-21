package com.tianjihai.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tianjihai.dao.DyPl;
import com.tianjihai.dao.User;
import com.tianjihai.serivce.DyPlService;
import com.tianjihai.serivce.DyService;
import com.tianjihai.serivce.UserService;

@Controller
public class UserAction {
	@Autowired
	UserService userServiceImpl;
	@Autowired
	DyService dyServiceImpl; 
	@Autowired 
	DyPlService dyplServiceImpl;
	
	@RequestMapping(value = "login")
	public ModelAndView login(String account, String pwd) {
		boolean ok = userServiceImpl.login(account, pwd);
		if (ok) {
			ModelAndView mv = new ModelAndView();
			List<DyPl> list2 =dyplServiceImpl.selectAll();
			mv.addObject("list2", list2);
			mv.addObject("account", account);
			mv.setViewName("dypl");
			return mv;
		} else {
			return new ModelAndView("/failure");
		}
	} 
	
	@RequestMapping("reg")
	public ModelAndView reg(User u) {
		ModelAndView mv = new ModelAndView();
		List<User> list = userServiceImpl.pd(u);
		if(list.size() >0) {
			mv.setViewName("register");
			mv.addObject("showMsg", "账号已存在");
		}else {
			if(userServiceImpl.reg(u) >0) {
				mv.setViewName("login");
				mv.addObject("showMsg", "注册成功！");
			}else {
				mv.setViewName("reg");
				mv.addObject("showMsg", "注册失败");
			}
		}
		return mv;
	}
	
	@RequestMapping("zhad")
	public ModelAndView zhad() {
		ModelAndView mv = new ModelAndView();
		List<User> list =userServiceImpl.selectAll();
		mv.addObject("list", list);
		mv.setViewName("zhad");
		return mv;
	}
	
	@RequestMapping("delzh")
	public ModelAndView delzh(int id) {
		ModelAndView mv = new ModelAndView();
		userServiceImpl.deleteByPrimaryKey(id);
		mv.setViewName("redirect:/zhad");
		return mv;
	}
}
