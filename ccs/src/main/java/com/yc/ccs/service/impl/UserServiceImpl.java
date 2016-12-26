package com.yc.ccs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ccs.entity.User;
import com.yc.ccs.mapper.UserMapper;
import com.yc.ccs.service.UserService;
import com.yc.ccs.utils.Encrypt;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public void resetPassword(String username, String randPassword) {
		// TODO Auto-generated method stub
		User user = new User(username, Encrypt.md5AndSha(randPassword));
		userMapper.updateUser(user);
	}

}
