package com.tianjihai.mapper;

import java.util.List;

import com.tianjihai.dao.AdUser; 

public interface AdUserMapper { 
	public int adlogin(AdUser aduser);
	int insert(AdUser u);
	List<AdUser> pd(AdUser u);
}