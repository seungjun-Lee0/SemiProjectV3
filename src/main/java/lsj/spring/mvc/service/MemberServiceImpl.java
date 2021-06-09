package lsj.spring.mvc.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lsj.spring.mvc.dao.MemberDAO;
import lsj.spring.mvc.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service("msrv")
public class MemberServiceImpl implements MemberSerivce{

    @Autowired private MemberDAO mdao;

    @Override
    public String newMember(Member m) {
        String result= "회원정보 저장 실패";

        int cnt = mdao.insertMember(m);
        if (cnt > 0) result = "회원정보 저장 완료";

        return result;
    }

    @Override
    public String findZipcode(String dong) {
        // 조회결과 출력방법 1 : csv (쉼표로 구분)
        // 서울, 강남구, 논현동, 123번지

        // 조회결과 출력방법 2 : xml
        // <zip><sido>서울</sido> <gugun>강남구</gugun>
        //      <dong>논현동</dong> <bunji>123번지</bunji></zip>

        // 조회결과 출력방법 3 : json (추천)
        // {'sido':'서울', 'gugun':'강남구',
        //  'dong':'논현동', 'bunji':'123번지'}

        // StringBuilder sb = new StringBuilder();
        // sb.append("{'sido':").append("'서울',")
        // .append("'gugun':").append("'강남구',")
        // .append("'dong':").append("'논현동',")
        // .append("'bunji':").append("'123번지',");
        // .append("}");
        
        // 코드를 json 형태로 결과물을 만들려면 상당히 복잡함
        // ObjectMapper 라는 라이브러리를 이용하여
        // 손쉽게 JSON 형식의 데이터를 생성 할 수 있음
        // writeValueAsString : List 형식의 데이터를 JSON 형식으로 변환해 줌
        ObjectMapper mapper = new ObjectMapper();
        String json = "";

        dong = dong + "%";

        try {
            json = mapper.writeValueAsString(
                    mdao.selectZipcode(dong)
            );
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return json;
    }

    @Override
    public String checkUserid(String uid) {
        return mdao.selectOneUserid(uid) + "";
    }

    @Override
    public boolean checkLogin(Member m, HttpSession sess) {
        return false;
    }
}
