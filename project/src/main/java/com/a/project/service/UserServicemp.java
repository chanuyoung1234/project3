package com.a.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a.project.dao.UserDao;
import com.a.project.model.JoinUser;

@Service
public class UserServicemp implements UserService{
	
	@Autowired
	private UserDao ud;

	
	public void insert(JoinUser joinuser) {
		ud.insert(joinuser);
		
	}


	
	public JoinUser selectlogin(JoinUser joinuser) {
		
		return ud.selectlogin(joinuser);
	}


	


	


	
	




	
	
	
	
}
