package com.tianjihai.serivce;

import java.util.List;
 
import com.tianjihai.dao.Mu;

public interface MuService { 
	
	int deleteByPrimaryKey(Integer yid);
	    List<Mu> selectAll();
	    List<Mu> selectById(Integer yid);
		int insert(Mu record);
		boolean updateMu(Mu mu);
	    List<Mu> updateByPrimaryKey();
}
