package com.a.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a.project.model.p_board;

@Repository
public class BoardDaomp implements BoardDao{
	@Autowired
	private SqlSessionTemplate sst;

	
	public void insert(p_board board) {
		
		int result=sst.insert("Boardns.insert", board);
		System.out.println("result="+result);
	}


	
	public void select(int bno) {
		
		sst.selectOne("Boardns.select", bno);
		
	}
	
}
