package com.ch.ch08.dao;
import java.util.List;
import com.ch.ch08.model.Dept;
public interface DeptDao {
	List<Dept> list();
	Dept select(int deptno);
	int insertDept(Dept dept);
	int updateDept(Dept dept);
	int deleteDept(int deptno);

}