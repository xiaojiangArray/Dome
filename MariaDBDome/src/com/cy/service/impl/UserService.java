package com.cy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cy.dao.IUserDao;
import com.cy.entity.UserInfo;
import com.cy.service.IUserService;
	/**
	 * 实现用户接口类 
	 * @author Array
	 *
	 */
@Service("userService")
public class UserService implements IUserService {
	
	@Resource
	private IUserDao userDao;
	
	@Override
	public List<UserInfo> queryAll() {
		return userDao.queryAll();
	}

	@Override
	public UserInfo queryId(int userId) {
		return userDao.queryId(userId);
	}

	@Override
	public Boolean insertUser(UserInfo user) {
		return userDao.insertUser(user);
	}

	@Override
	public Boolean updateUser(UserInfo user) {
		return userDao.updateUser(user);
	}

	@Override
	public Boolean deleteUser(List ids) {
		return userDao.deleteUser(ids);
	}

}
