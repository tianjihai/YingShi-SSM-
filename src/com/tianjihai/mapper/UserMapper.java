package com.tianjihai.mapper;

import java.util.List;

import com.tianjihai.dao.User;

public interface UserMapper {
	public int login(User user);

	int insert(User u);
	
	List<User> pd(User u);

	public List<User> selectAll();
	
    int deleteByPrimaryKey(Integer id);
}