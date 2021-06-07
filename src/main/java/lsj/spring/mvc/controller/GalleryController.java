package lsj.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GalleryController {

		@RequestMapping("/gallery/list")
		public String list() {
			return "gallery/list.tiles";
		}
		
		@RequestMapping("/gallery/view")
		public String view() {
			return "gallery/view.tiles";
		}
		
		@RequestMapping("/gallery/write")
		public String write() {
			return "gallery/write.tiles";
		}
		
		
}
