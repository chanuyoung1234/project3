package com.ch.ch08.service;
import java.util.List;
import com.ch.ch08.model.Dept;
public interface DeptService {
	List<Dept> list();
	Dept select(int deptno);
	int insertDept(Dept dept);
	int updateDept(Dept dept);
	int deleteDept(int deptno);

}