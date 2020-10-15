package com.a.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a.project.model.JoinUser;

@Repository
public class UserDaomp implements UserDao{
	@Autowired
	private SqlSessionTemplate sst;

	
	public void insert(JoinUser joinuser) {
		int result = sst.insert("joinuser.insert", joinuser);
		System.out.println("result = "+result);
		
	}


	
	public JoinUser selectlogin(JoinUser joinuser) {
		
		return sst.selectOne("joinuser.selectlogin", joinuser);
	}


	
	

	


	
	

	

	
	

	
	
}
