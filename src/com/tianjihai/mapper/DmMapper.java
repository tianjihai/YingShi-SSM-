package com.tianjihai.mapper;

import java.util.List;

import com.tianjihai.dao.Dm; 
 

public interface DmMapper {
    int deleteByPrimaryKey(Integer did); 
    int insert(Dm record);  
    List<Dm> selectAll(); 
    List<Dm>  selectById(Integer did);
    List<Dm> updateByPrimaryKey();
	public Dm findById(String did);
	int updateDm(Dm dm);
     
}