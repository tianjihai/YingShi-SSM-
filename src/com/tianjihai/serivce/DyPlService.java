package com.tianjihai.serivce;

import java.util.List;
  
import com.tianjihai.dao.DyPl;

public interface DyPlService { 
	    List<DyPl> selectAll();
	    List<DyPl> selectById(Integer id);
		int insert(DyPl record); 
		int deleteByPrimaryKey(Integer mplid);
}
