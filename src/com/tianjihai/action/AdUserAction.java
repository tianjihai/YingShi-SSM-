package com.tianjihai.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.tianjihai.dao.AdUser;
import com.tianjihai.serivce.AdUserService;
   

@Controller
public class AdUserAction {
	@Autowired
	AdUserService aduserServiceImpl; 
	
	@RequestMapping(value = "admlogin")
	public ModelAndView login(String adname, String adpass) {
		boolean ok = aduserServiceImpl.adlogin(adname, adpass);
		if (ok) {
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("adname", adname);
			return new ModelAndView("/admin", model);
		} else {
			return new ModelAndView("/failure");
		}
	}
	
	
	
}
