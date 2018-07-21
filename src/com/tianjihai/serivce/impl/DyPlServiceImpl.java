package com.tianjihai.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
  
import com.tianjihai.dao.DyPl; 
import com.tianjihai.mapper.DyPlMapper;
import com.tianjihai.serivce.DyPlService; 
@Service
public class DyPlServiceImpl implements DyPlService {
@Autowired
DyPlMapper dyPlMapper;

@Override
public int deleteByPrimaryKey(Integer mplid) {
	return dyPlMapper.deleteByPrimaryKey(mplid);
}

@Override
	public int insert(DyPl record) { 
		return dyPlMapper.insert(record);
	}

	@Override
	public List<DyPl> selectAll() { 
		return dyPlMapper.selectAll();
	}
	
	@Override
	public List<DyPl> selectById(Integer id) { 
		return dyPlMapper.selectById(id);
	}


}
