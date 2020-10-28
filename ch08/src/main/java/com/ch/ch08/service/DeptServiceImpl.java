package com.ch.ch08.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.ch08.dao.DeptDao;
import com.ch.ch08.model.Dept;
@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
	private DeptDao dd;
	public List<Dept> list() {
		return dd.list();
	}
	public Dept select(int deptno) {
		return dd.select(deptno);
	}
	public int insertDept(Dept dept) {
		return dd.insertDept(dept);
	}
	public int updateDept(Dept dept) {
		return dd.updateDept(dept);
	}
	public int deleteDept(int deptno) {
		return dd.deleteDept(deptno);
	}
}