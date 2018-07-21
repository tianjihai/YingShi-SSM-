package com.tianjihai.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.tianjihai.dao.Dy;
import com.tianjihai.mapper.DyMapper;
import com.tianjihai.serivce.DyService;
 
 
@Service
public class DyServiceImpl implements DyService {
@Autowired
DyMapper dyMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return dyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Dy record) { 
		return dyMapper.insert(record);
	}

	@Override
	public List<Dy> selectAll() {
		return dyMapper.selectAll();
	}
	
	@Override
	public List<Dy> selectById(Integer id) { 
		return dyMapper.selectById(id);
	}
	
	@Override
	public Dy findById(String id){
		return dyMapper.findById(id);
	}

 	@Override
	public List<Dy> updateByPrimaryKey() { 
		return dyMapper.updateByPrimaryKey();
	} 
	
	@Override
	public boolean updateDy(Dy dy){
		return dyMapper.updateDy(dy)>0;
	}	
	 

}
