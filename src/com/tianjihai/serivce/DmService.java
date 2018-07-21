package com.tianjihai.serivce;

import java.util.List;

import com.tianjihai.dao.Dm; 

public interface DmService { 
	int deleteByPrimaryKey(Integer did);
	int insert(Dm record);
	    List<Dm> selectAll();
	    List<Dm> selectById(Integer did);  
		boolean updateDm(Dm dm);
	    List<Dm> updateByPrimaryKey();
	    
}
