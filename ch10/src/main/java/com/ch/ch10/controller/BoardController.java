package com.ch.ch10.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.ch10.model.Board;
import com.ch.ch10.service.BoardService;
import com.ch.ch10.service.PagingBean;
@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	@RequestMapping("/list")
	public String init() {
		return "redirect:/list/pageNum/1";
	}
	@RequestMapping("/list/pageNum/{pageNum}")
	public String list(@PathVariable String pageNum, Board board, Model model) {
		int rowPerPage = 10;
		// 페이지가 지정되지 않으면 1페이지를 보여줘라
		if (pageNum==null || pageNum.equals(""))
			pageNum="1";
		int currentPage = Integer.parseInt(pageNum);
		int total = bs.getTotal(board); 
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		board.setStartRow(startRow);
		board.setEndRow(endRow);
	//	List<Board> list = bs.list(startRow, endRow);
	//  board : search, keyword, stardRow, endRow
		List<Board> list = bs.list(board);
		PagingBean pb = new PagingBean(currentPage,rowPerPage,total);
		String[] tit = {"작성자","제목","내용","제목+내용"};
		model.addAttribute("tit", tit);
		model.addAttribute("list", list);
		model.addAttribute("board", board);
		model.addAttribute("pb", pb);
		return "list";
	}
	@RequestMapping("/insertForm/nm/{nm}/pageNum/{pageNum}")
	public String insertForm(@PathVariable String nm,
			@PathVariable String pageNum, Model model) {
		// 답변용 ref, re_level, re_step
		int ref=0,re_level=0,re_step=0,num=0; // 답변글이 아님
		if (nm!=null && !nm.equals("") && !nm.equals("null")) {  // 답변글
			num = Integer.parseInt(nm);
			Board board = bs.select(num);
			// 원본글의 ref, re_level, re_step
			ref = board.getRef();
			re_level = board.getRe_level();
			re_step = board.getRe_step();
		}
		model.addAttribute("ref", ref);
		model.addAttribute("re_level", re_level);
		model.addAttribute("re_step", re_step);
		model.addAttribute("num", num);
		model.addAttribute("pageNum", pageNum);
		return "insertForm";
	}
	@RequestMapping("/insert")
	public String insert(Board board, String pageNum,Model model,
			HttpServletRequest request) {
		board.setIp(request.getLocalAddr()); // ip setting
		int number = bs.maxNum();  // num값
		if (board.getNum() != 0) { // 답변글
			// re_step을 정리
			bs.updateRe_step(board);
			board.setRe_level(board.getRe_level()+1);
			board.setRe_step(board.getRe_step()+1);
		} else board.setRef(number); // 답변글이 아니면 ref와 num은 같다
		board.setNum(number);
		int result = bs.insert(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "insert";
	}
	@RequestMapping("/view/num/{num}/pageNum/{pageNum}")
	public String view(@PathVariable int num,
			@PathVariable String pageNum, Model model) {
		bs.updateReadCount(num);
		Board board = bs.select(num);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "view";
	}
	@RequestMapping("/updateForm/num/{num}/pageNum/{pageNum}")
	public String updateForm(@PathVariable int num, 
			@PathVariable String pageNum,Model model) {
		Board board = bs.select(num);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "updateForm";
		
	}
	@RequestMapping("update")
	public String update(Board board, String pageNum, Model model) {
		int result = bs.update(board);
		model.addAttribute("result", result);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "update";
	}
	@RequestMapping("/deleteForm/num/{num}/pageNum/{pageNum}")
	public String deleteForm(@PathVariable int num, 
			@PathVariable String pageNum, Model model) {
		Board board = bs.select(num);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "deleteForm";
	}
	@RequestMapping("delete")
	public String delete(int num, String pageNum, Model model) {
		int result = bs.delete(num);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "delete";
	}
	@RequestMapping("insertBoard")
	public String insertBoard(HttpServletRequest request) {
		String ip = request.getLocalAddr();
		for (int i =1; i <= 230; i++ ) {
			Board board = new Board();
			board.setSubject("대박"+i);
			board.setWriter("길동"+ i);
			board.setEmail("k"+i+"@k.com");
			board.setPassword("1");
			board.setContent("가을이 왔네"+i);
			board.setIp(ip);
			bs.insert(board);
		}
		return "insertBoard";
	}
}