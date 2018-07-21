package com.tianjihai.serivce.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tianjihai.dao.Dm; 
import com.tianjihai.mapper.DmMapper;
import com.tianjihai.serivce.DmService;

@Service
public class DmServiceImpl implements DmService {
@Autowired
DmMapper dmMapper; 

@Override
public int deleteByPrimaryKey(Integer did) { 
	return dmMapper.deleteByPrimaryKey(did);
}

@Override
public int insert(Dm record) {
	// TODO Auto-generated method stub
	return dmMapper.insert(record);
}

	@Override
	public List<Dm> selectAll() { 
		return dmMapper.selectAll();
	}
	
	@Override
	public List<Dm> selectById(Integer did) { 
		return dmMapper.selectById(did);
	} 

 	@Override
	public List<Dm> updateByPrimaryKey() {
		// TODO Auto-generated method stub
		return dmMapper.updateByPrimaryKey();
	} 
	
	@Override
	public boolean updateDm(Dm dm){
		return dmMapper.updateDm(dm)>0;
	}	

 

	

}
