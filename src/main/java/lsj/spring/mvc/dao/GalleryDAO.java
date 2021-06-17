package lsj.spring.mvc.dao;

import lsj.spring.mvc.vo.Gallery;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface GalleryDAO {
    int insertGal(Gallery g);
    List<Gallery> selectGal(int snum);
    Gallery selectOneGal(String gno);

    int updateGal(Gallery g);

    String readFnames(String gno);

    String readFsizes(String gno);
}
