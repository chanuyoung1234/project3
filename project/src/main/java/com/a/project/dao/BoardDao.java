package com.a.project.dao;

import com.a.project.model.p_board;

public interface BoardDao {

	void insert(p_board board);

	void select(int bno);

}
