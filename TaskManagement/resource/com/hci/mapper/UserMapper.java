package com.hci.mapper;

import java.util.List;

import com.hci.bean.QueryVo;
import com.hci.bean.User;

public interface UserMapper {
	
	public List<User> findUserByVo(QueryVo vo);
	
	public Integer findUser(User user);
	
	public Integer findUserByCount();
	
	public Integer findUserByCountAndVo(QueryVo vo);
	
	public Integer findUserId(String name);
	
	public Integer findUserByName(String name);
	
	public Integer findUserExist(String name);
	
	public User findUserById(int id);

	public void updateUserById(User user);

	public void deleteUserById(int id);

	public void addUser(User user);
	
}
