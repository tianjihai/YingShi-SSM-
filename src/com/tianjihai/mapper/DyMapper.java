package com.tianjihai.mapper;

import java.util.List;
 
import com.tianjihai.dao.Dy;
 

public interface DyMapper {
    int deleteByPrimaryKey(Integer id);
    int insert(Dy record);  
    List<Dy> selectAll(); 
    List<Dy>  selectById(Integer id); 
    List<Dy> updateByPrimaryKey();
	public Dy findById(String id);
	int updateDy(Dy dy);
     
}