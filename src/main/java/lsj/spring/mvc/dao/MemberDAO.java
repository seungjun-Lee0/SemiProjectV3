package lsj.spring.mvc.dao;

import lsj.spring.mvc.vo.Member;
import lsj.spring.mvc.vo.Zipcode;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MemberDAO {

//    String newMember(Member m);
//    String findZipcode(String dong);
//    String checkUserid(String uid);
//    boolean checkLogin(Member m, HttpSession sess);
    int insertMember(Member m);
    List<Zipcode> selectZipcode(String dong);
    int selectOneUserid(String uid);
    int selectLogin(Member m);
}
