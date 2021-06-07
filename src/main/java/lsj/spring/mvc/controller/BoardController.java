package lsj.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/board/list")
	public String list() {
		return "board/list.tiles";
	}
	
	@RequestMapping("/board/view")
	public String view() {
		return "board/view.tiles";
	}

	@RequestMapping("/board/write")
	public String write() {
		return "board/write.tiles";
	}

}
