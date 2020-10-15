package com.a.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.a.project.model.JoinUser;

@Controller
public class CardController {

	@RequestMapping("createform")
	public String createform() {
		return "createform";
	}
	
	@RequestMapping("createsuccess")
	public String createsuccess(Model model,HttpServletRequest request) {
		JoinUser createuser = new JoinUser();
		
		createuser.setCardnum(request.getParameter("cardnum"));
		createuser.setCardpwd(request.getParameter("cardpwd"));
		createuser.setBank(request.getParameter("bank"));
		
		return "createsuccess";
	}
}
