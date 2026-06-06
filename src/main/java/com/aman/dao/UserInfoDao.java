package com.aman.dao;

import java.util.List;

import com.aman.pojo.UserInfo;

public interface UserInfoDao {

	boolean addNewUser(UserInfo u);
	UserInfo checkUserCredential(UserInfo u);
	UserInfo getUserByUserId(int userId);
	public boolean updateHtmlCssAccess(int userId);
	public boolean updatePythonAccess(int userId);
	List<UserInfo> getAll();
	UserInfo getUserByEmail(String email);
	boolean resetPassword(int userId, String newPassword);
}
