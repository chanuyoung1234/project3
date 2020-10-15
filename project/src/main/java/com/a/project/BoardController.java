package com.a.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.a.project.model.JoinUser;
import com.a.project.model.p_board;
import com.a.project.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	@RequestMapping("boardform")
	public String boardform() {
	
		return "boardform";
	}
	@RequestMapping("list")
	public String list(HttpServletRequest request,int bno) {
		p_board board =new p_board();
		
		board.setBno(Integer.parseInt(request.getParameter("bno")));
		board.setTitle(request.getParameter("title"));
		board.setWriter(request.getParameter("writer"));
		board.setContent(request.getParameter("content"));
		if(board!=null) {
			bs.insert(board);
			bs.select(bno);
			request.setAttribute("board", board);
		}
		return "list";
	}
	
}
