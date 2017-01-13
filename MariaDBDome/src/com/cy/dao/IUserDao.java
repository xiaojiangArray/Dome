package com.cy.dao;

import java.util.List;

import com.cy.entity.UserInfo;
	/**
	 * 用户操作的是 dao 类
	 * @author Array
	 *
	 */
public interface IUserDao {
	
	public List<UserInfo> queryAll();
	
	public UserInfo queryId(int userId);
	
	public Boolean insertUser(UserInfo user);
	
	public Boolean updateUser(UserInfo user);
	
	public Boolean deleteUser(List ids);
	
}
