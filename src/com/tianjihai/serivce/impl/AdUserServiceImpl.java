package com.tianjihai.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianjihai.dao.AdUser;
import com.tianjihai.dao.User;
import com.tianjihai.mapper.AdUserMapper;
import com.tianjihai.serivce.AdUserService; 
@Service
public class AdUserServiceImpl implements AdUserService {
@Autowired
AdUserMapper  aduserMapper;


@Override
public boolean adlogin(String adname, String adpass) {
	System.out.println(adname);
	System.out.println(adpass);
	AdUser aduser = new AdUser();
	aduser.setAdname(adname);
	aduser.setAdpass(adpass);
	int n = aduserMapper.adlogin(aduser);
	System.out.println(n);
	if (n == 1) {
		return true;
	} else {
		return false;
	}  
}


	@Override
	public List<AdUser> adpd(AdUser u) { 
		return aduserMapper.pd(u);
	}

}
