package com.ch.ch08.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Emp { // DTO, VO
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private Date hiredate;
	private int sal;
	private int comm;
	private int deptno;
	// join 용
	private Dept dept;
}
