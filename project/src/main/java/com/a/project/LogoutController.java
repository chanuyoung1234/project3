package com.a.project;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.a.project.model.JoinUser;

@Controller
public class LogoutController {
	
	@RequestMapping("logout")
	public String logout(
			HttpServletRequest request,HttpServletResponse response) {
		HttpSession session=request.getSession();
		session.invalidate();
		System.out.println("logout");
		return "logout";
	}
}
