package lsj.spring.mvc.dao;

import lsj.spring.mvc.vo.Gallery;

import java.util.List;

public interface GalleryDAO {
    int insertGal(Gallery g);
    List<Gallery> selectGal(int snum);
    Gallery selectOneGal(String gno);
}
