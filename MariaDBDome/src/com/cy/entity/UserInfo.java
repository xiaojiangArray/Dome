package com.cy.entity;
	/**
	 * 用户表实体类
	 * @author Array
	 *
	 */
public class UserInfo {
	private Integer userId;
	private String userName;
	private Integer userAge;
	private String userSex;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getUserAge() {
		return userAge;
	}
	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public UserInfo(Integer userId, String userName, Integer userAge,
			String userSex) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userAge = userAge;
		this.userSex = userSex;
	}
	public UserInfo() {
		super();
	}
	
	
}
