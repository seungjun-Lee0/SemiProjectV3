package lsj.spring.mvc.controller;

import lsj.spring.mvc.service.MemberSerivce;
import lsj.spring.mvc.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class JoinController {

	@Autowired private MemberSerivce msrv;

	@GetMapping("/join/agree")
	public String index() {
		return "join/agree.tiles";
	}

	@GetMapping("/join/checkme")
	public String checkme() {
		return "join/checkme.tiles";
	}

	@PostMapping("/join/joinme")
	public String joinme() {
		return "join/joinme.tiles";
	}

	@PostMapping("/join/joinok")
	public String joinok(Member m, HttpServletRequest req) {

		msrv.newMember(m);

		return "join/joinok.tiles";
	}

	// 우편번호 검색
	// /join/zipcode?dong=동이름
	// 검색된 결과를 뷰페이지 없이 바로 응답으로 출력 : REST
	// 서블릿에서 제공하는 HttpServletResponse를 이용하면
	// 스프링의 뷰리졸버 없이 바로 응답을 출력할 수 있음
	// 결과는 자바 스크립트의 ajax를 이용하여 적절히 가공해서 폼에 출력
	@ResponseBody
	@GetMapping("/join/zipcode")
	public void zipcode(String dong, HttpServletResponse res) {

		try {
			// 응답결과의 유형은 JSON 형식으로 설정
			res.setContentType("application/json; charset=UTF-8");
			// 응답결과를 뷰없이 브라우져로 바로 출력
			res.getWriter().print(msrv.findZipcode(dong));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
