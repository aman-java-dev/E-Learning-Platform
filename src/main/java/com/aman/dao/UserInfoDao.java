package com.aman.dao;

import com.aman.pojo.UserInfo;

public interface UserInfoDao {

	boolean addNewUser(UserInfo u);
	UserInfo checkUserCredential(UserInfo u);
	UserInfo getUserByUserId(int userId);
	public boolean updateHtmlCssAccess(int userId);
	public boolean updatePythonAccess(int userId);

}
