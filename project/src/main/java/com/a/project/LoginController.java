package com.a.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.a.project.model.JoinUser;
import com.a.project.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService us;
	
	@RequestMapping("loginform")
	public String loginform() {
		return "loginform";
		
	}
	@RequestMapping("loginsuccess")
	public String loginsuccess(JoinUser joinuser, HttpSession session) {
		  
		  
		  joinuser.setId(joinuser.getId());
		  joinuser.setPassword(joinuser.getPassword());
		
		JoinUser login = us.selectlogin(joinuser);
		if(login!=null) {
			session.setAttribute("joinuser", login);
			//rttr.addFlashAttribute("msg", true);
		}else {
			session.setAttribute("joinuser", null);
		}
		
		return "loginsuccess";
		
	}
}
