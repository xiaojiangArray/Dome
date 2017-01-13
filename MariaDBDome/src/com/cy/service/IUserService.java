package com.cy.service;

import java.util.List;

import com.cy.entity.UserInfo;

	/**
	 * 用户表的service 的接口类
	 * @author Array
	 *
	 */
public interface IUserService {

	public List<UserInfo> queryAll();
	
	public UserInfo queryId(int userId);
	
	public Boolean insertUser(UserInfo user);
	
	public Boolean updateUser(UserInfo user);
	
	@SuppressWarnings("rawtypes")
	public Boolean deleteUser(List userId);
}
