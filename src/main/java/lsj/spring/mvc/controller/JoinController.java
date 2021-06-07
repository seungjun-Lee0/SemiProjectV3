package lsj.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
		
	@RequestMapping("/join/agree")
	public String index() {
		return "join/agree.tiles";
	}
	
	@RequestMapping("/join/checkme")
	public String checkme() {
		return "join/checkme.tiles";
	}

	@RequestMapping("/join/joinme")
	public String joinme() {
		return "join/joinme.tiles";
	}
	
	@RequestMapping("/join/joinok")
	public String joinok() {
		return "join/joinok.tiles";
	}
}
