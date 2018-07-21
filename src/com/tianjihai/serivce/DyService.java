package com.tianjihai.serivce;

import java.util.List;
 
import com.tianjihai.dao.Dy;
 

public interface DyService {
	
		int deleteByPrimaryKey(Integer id);
		int insert(Dy record);
	    List<Dy> selectAll();
	    List<Dy> selectById(Integer id); 
	    List<Dy> updateByPrimaryKey();
		Dy findById(String id); 
		boolean updateDy(Dy dy);
	    
	    
}
