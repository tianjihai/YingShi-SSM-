package com.tianjihai.mapper;

import java.util.List;
 
import com.tianjihai.dao.DyPl;

public interface DyPlMapper { 

    List<DyPl> selectAll();

    List<DyPl>  selectById(Integer id);
     
    int insert(DyPl record);
    
    int deleteByPrimaryKey(Integer mplid);
    
}