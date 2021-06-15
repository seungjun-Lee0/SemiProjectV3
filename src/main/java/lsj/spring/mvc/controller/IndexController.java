package lsj.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
		
		@RequestMapping("/")
		public String index() {
			return "index.tiles";
		}

		@GetMapping("/pds")
		public String pds() {
			return "pds.tiles";
		}
}
