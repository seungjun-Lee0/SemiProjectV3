package lsj.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PdsController {
		
		@RequestMapping("/pds/list")
		public String list() {
			return "pds/list.tiles";
		}
		
		@RequestMapping("/pds/view")
		public String view() {
			return "pds/view.tiles";
		}
		
		@RequestMapping("/pds/write")
		public String write() {
			return "pds/write.tiles";
		}
}
