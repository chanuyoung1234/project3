package com.a.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a.project.dao.BoardDao;
import com.a.project.model.p_board;

@Service
public class BoardServicemp implements BoardService{
	
	@Autowired
	private BoardDao bd;

	
	public void insert(p_board board) {
		bd.insert(board);
		
	}


	
	public void select(int bno) {
		bd.select(bno);
		
	}
	
}
