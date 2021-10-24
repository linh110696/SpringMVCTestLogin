package com.fx04582;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login.html")
	public String login() {
		return ("login");
	}
	
	@RequestMapping(value = "/dologin.html", method = RequestMethod.POST)
	public ModelAndView dologin(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (username != null && password != null) {
			if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
				return new ModelAndView("confirmation", "username", username);
			} else return new ModelAndView("login", "error", "Username or password is invalid");
		}
		return new ModelAndView("login", "error", "Username or password is invalid");
	}
	
}
