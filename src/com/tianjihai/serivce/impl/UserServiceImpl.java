package com.tianjihai.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianjihai.dao.User;
import com.tianjihai.mapper.UserMapper;
import com.tianjihai.serivce.UserService;
@Service
public class UserServiceImpl implements UserService {
@Autowired
UserMapper  userMapper;


@Override
public int deleteByPrimaryKey(Integer id) { 
	return userMapper.deleteByPrimaryKey(id);
}

@Override
public boolean login(String account, String pwd) {
	User user = new User();
	user.setAccount(account);
	user.setPwd(pwd);
	int n = userMapper.login(user); 
	if (n == 1) {
		return true;
	} else {
		return false;
	}  
}

	@Override
	public int reg(User u) {
		// TODO Auto-generated method stub
		return userMapper.insert(u);
	}

	@Override
	public List<User> pd(User u) {
		// TODO Auto-generated method stub
		return userMapper.pd(u);
	}

	@Override
	public List<User> selectAll() {
		return userMapper.selectAll();
	}

}
