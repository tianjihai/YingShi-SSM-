package com.tianjihai.mapper;

import java.util.List; 
import com.tianjihai.dao.Mu;
 

public interface MuMapper { 
    int deleteByPrimaryKey(Integer yid);
    int insert(Mu record);  
    List<Mu> selectAll(); 
    List<Mu>  selectById(Integer yid);
    List<Mu> updateByPrimaryKey();
	public Mu findById(String yid);
	int updateMu(Mu mu);
    
    
}