package com.ch.ch08.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.ch08.model.Dept;
import com.ch.ch08.model.Emp;
import com.ch.ch08.service.DeptService;
import com.ch.ch08.service.EmpService;
@Controller
public class EmpController {
	@Autowired
	private EmpService es;
	@Autowired
	private DeptService ds;
	@RequestMapping("empList")
	public String empList(int deptno, Model model) {
		Dept dept = ds.select(deptno);
		List<Emp> empList = es.empList(deptno);
		model.addAttribute("dept", dept);
		model.addAttribute("empList", empList);
		return "/emp/empList";
	}
	@RequestMapping("empSelect")
	public String empSelect(int empno, Model model) {
		Emp emp = es.empSelect(empno);
		model.addAttribute("emp",emp);
		return "/emp/empSelect";
	}
	@RequestMapping("empInsertForm")
	public String empInsertForm(int deptno, Model model) {
		List<Dept> deptList = ds.list();   // 부서코드 선택
		List<Emp> empList = es.empAllList();  // 관리자 선택
		model.addAttribute("deptList", deptList);
		model.addAttribute("empList", empList);
		model.addAttribute("deptno", deptno);
		return "/emp/empInsertForm";
	}
	@RequestMapping("empInsert")
	public String empInsert(Emp emp, Model model) { // emp는 화면 입력
		int result = 0;
		// 중복 체크했지만 혹시 같은 사번데이터를 입력하는 것을 방지하기 위해
		Emp emp2 = es.empSelect(emp.getEmpno());
		if (emp2 == null) {
			result = es.empInsert(emp); // result는 입력에 성공한 갯수
		} else result = -1; // 중복된 사번 입력 
		model.addAttribute("result", result);
		model.addAttribute("emp", emp);
		return "/emp/empInsert";
	}
	@RequestMapping(value="empNoChk", 
				produces="text/html;charset=utf-8" )
	@ResponseBody
	public String empNoChk(int empno) {
		String msg = "";
		Emp emp = es.empSelect(empno);
		if (emp==null) msg = "사용 가능한 사번입니다";
		else msg="사용중이니 다른 사번을 사용하시오";
		return msg;
	}
	@RequestMapping("empUpdateForm")
	public String empUpdateForm(int empno, Model model) {
		Emp emp = es.empSelect(empno);
		List<Dept> deptList = ds.list();   // 부서코드 선택
		List<Emp> empList = es.empAllList();  // 관리자 선택
		model.addAttribute("deptList", deptList);
		model.addAttribute("empList", empList);
		model.addAttribute("emp", emp);
		return "/emp/empUpdateForm";
	}
	@RequestMapping("empUpdate")
	public String empUpdate(Emp emp, Model model) {
		int result = es.empUpdate(emp);
		model.addAttribute("result", result);
		model.addAttribute("emp", emp);
		return "/emp/empUpdate";
	}
	@RequestMapping("empDelete")
	public String empDelete(int empno, Model model) {
		// 삭제된 사번에 속한 부서코드를 알기 위해 남아 있는 직원에 대한 정보 제공
		Emp emp = es.empSelect(empno);
		int result = es.empDelete(empno);
		model.addAttribute("result", result);
		model.addAttribute("emp", emp);
		return "/emp/empDelete";
	}
	@RequestMapping("empAllList")
	public String empAllList(Model model) {
		List<Emp> empList = es.empJoinList();
		model.addAttribute("empList", empList);
		return "/emp/empAllList";
		
	}
}