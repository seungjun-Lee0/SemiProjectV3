package lsj.spring.mvc.dao;

import lsj.spring.mvc.vo.Pds;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface PdsDAO {
    int insertPds(Pds p);
    List<Pds> selectPds(int snum);
    int selectCountPds();

    Pds selectOnepds(String pno);
    Pds selectOneFname(Map<String, String> param);

    int downCountPds(Map<String, String> param);
    int thumbupCountPds(String pno);

    String selectPrevpno(String pno);
    String selectNextpno(String pno);

    void deletePds(String pno);
}
