package com.aman.daoimpl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.aman.dao.UserInfoDao;
import com.aman.pojo.UserInfo;
import com.aman.repository.UserInfoRepository;

@Component
public class UserInfoDaoImpl implements UserInfoDao{

	@Autowired
	private UserInfoRepository userRepository;
	
	@Override
	public boolean updateHtmlCssAccess(int userId) {
		 try {
		        Optional<UserInfo> op = userRepository.findById(userId);

		        if (op.isPresent()) {
		            UserInfo user = op.get();
		            user.setHtmlcssAccess(true);  
		            userRepository.save(user);
		            return true;
		        }
		        return false;
		    } catch (Exception e) {
		        e.printStackTrace();
		        return false;
		    }
	}



	@Override
	public boolean updatePythonAccess(int userId) {
		try {
	        Optional<UserInfo> op = userRepository.findById(userId);

	        if (op.isPresent()) {
	            UserInfo user = op.get();
	            user.setPythonAccess(true);  
	            userRepository.save(user);
	            return true;
	        }
	        return false;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}



	@Override
	public boolean addNewUser(UserInfo u) {

		try {
			
			Optional<UserInfo> op = userRepository.findByUsername(u.getUsername());
			if(op.isPresent()) {
				return false;
			}else {
				userRepository.save(u);
				return true;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return false;
		}
	}
	
	

	@Override
	public UserInfo getUserByUserId(int userId) {
		try {
			Optional<UserInfo> op = userRepository.findById(userId);
			if(op.isPresent()) {
				UserInfo u = op.get();
				return u;
			}
			else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public UserInfo checkUserCredential(UserInfo u) {
		
		try {

			Optional<UserInfo> op = userRepository
					.findByUsername(u.getUsername());
			
			if(op.isPresent())
			{
				UserInfo user = op.get();
				if(user.getPassword().equals(u.getPassword())) {
					return user;
				}else {
					return null;
				}
			}else {
				return null;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}	
	}

	
}
