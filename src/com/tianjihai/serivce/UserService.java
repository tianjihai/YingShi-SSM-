package com.tianjihai.serivce;

import java.util.List;

import com.tianjihai.dao.User;

public interface UserService {
	int reg(User u);
	List<User> pd(User u);
	boolean login(String account, String pwd);
	List<User> selectAll();
	int deleteByPrimaryKey(Integer id);
}
