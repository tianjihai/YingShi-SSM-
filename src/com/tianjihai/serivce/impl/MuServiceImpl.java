package com.tianjihai.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianjihai.dao.Dy;
import com.tianjihai.dao.Mu;
import com.tianjihai.mapper.MuMapper;
import com.tianjihai.serivce.MuService; 
@Service
public class MuServiceImpl implements MuService {
@Autowired
MuMapper muMapper;

	@Override
	public int deleteByPrimaryKey(Integer yid) {
		return muMapper.deleteByPrimaryKey(yid);
	}

	@Override
	public int insert(Mu record) {
		// TODO Auto-generated method stub
		return muMapper.insert(record);
	}

	@Override
	public List<Mu> selectAll() { 
		return muMapper.selectAll();
	}
	
	@Override
	public List<Mu> selectById(Integer yid) { 
		return muMapper.selectById(yid);
	}

 	@Override
	public List<Mu> updateByPrimaryKey() {
		// TODO Auto-generated method stub
		return muMapper.updateByPrimaryKey();
	} 
	
	@Override
	public boolean updateMu(Mu mu){
		return muMapper.updateMu(mu)>0;
	}	

	

}
