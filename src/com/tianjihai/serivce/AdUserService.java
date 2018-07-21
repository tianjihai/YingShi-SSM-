package com.tianjihai.serivce;

import java.util.List;

import com.tianjihai.dao.AdUser; 

public interface AdUserService {

	List<AdUser> adpd(AdUser u);


	boolean adlogin(String account, String pwd);
}
