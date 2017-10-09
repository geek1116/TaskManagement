package com.hci.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hci.bean.QueryVo;
import com.hci.bean.User;
import com.hci.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> findUserByVo(QueryVo vo) {
		//设置查询起始记录条数
		vo.setStart((vo.getPage() - 1) * vo.getSize());
		return userMapper.findUserByVo(vo);
	}

	@Override
	public Integer findUserByCount() {
		return userMapper.findUserByCount();
	}

	@Override
	public void updateUserById(User user) {
		userMapper.updateUserById(user);
	}

	@Override
	public void deleteUserById(int id) {
		userMapper.deleteUserById(id);
	}

	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}

	@Override
	public Integer findUserByName(String name) {
		return userMapper.findUserByName(name);
	}

	@Override
	public Integer findUserExist(String name) {
		return userMapper.findUserExist(name);
	}

	@Override
	public Integer findUser(User user) {
		return userMapper.findUser(user);
	}

	@Override
	public Integer findUserId(String name) {
		return userMapper.findUserId(name);
	}
	
	@Override
	public User findUserById(int id){
		return userMapper.findUserById(id);
	}
	
	@Override
	public Integer findUserByCountAndVo(QueryVo vo){
		return userMapper.findUserByCountAndVo(vo);
	}
}
