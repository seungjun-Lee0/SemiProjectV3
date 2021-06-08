package lsj.spring.mvc.service;

import lsj.spring.mvc.vo.Member;

import javax.servlet.http.HttpSession;

public interface MemberSerivce {
    String newMember(Member m);
    String findZipcode(String dong);
    String checkUserid(String uid);
    boolean checkLogin(Member m, HttpSession sess);

}
