package bahrini.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import bahrini.service.IUserService;

import javax.servlet.http.HttpSession;


@Controller
public class UserController {
	@Autowired
	private IUserService service;
	@RequestMapping(value="/home")
	public String home(HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		authentication.getPrincipal();
		session.setAttribute("user", service.getDataByUserName(authentication.getName()));
 		return "user-info";
 	}
	@RequestMapping(value="/error")
	public String error() {
 		return "access-denied";
 	}
}	