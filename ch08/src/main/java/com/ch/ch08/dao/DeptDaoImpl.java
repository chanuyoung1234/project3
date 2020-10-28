package com.ch.ch08.dao;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.ch08.model.Dept;
@Repository
public class DeptDaoImpl implements DeptDao {
	@Autowired
	private SqlSessionTemplate sst;
	public List<Dept> list() {
		return sst.selectList("deptns.deptList");
	}
	public Dept select(int deptno) {
		return sst.selectOne("deptns.select", deptno);
	}
	public int insertDept(Dept dept) {
		return sst.insert("deptns.insertDept", dept);
	}
	public int updateDept(Dept dept) {
		return sst.update("deptns.updateDept", dept);
	}
	public int deleteDept(int deptno) {
		return sst.delete("deptns.deleteDept", deptno);
	}
}