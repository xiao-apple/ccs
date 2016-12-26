package com.yc.ccs.service;

import com.yc.ccs.entity.User;

public interface UserService {
	public void resetPassword(String username,String randPassword);

	public User login(User user);
}
