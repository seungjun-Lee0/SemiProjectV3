package lsj.spring.mvc.dao;

import lsj.spring.mvc.vo.Gallery;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("gdao")
public class GalleryDAOImpl implements GalleryDAO{

    @Autowired private SqlSession sqlSession;

    @Override
    public int insertGal(Gallery g) {
        sqlSession.insert("gallery.insertGallery", g);

        return sqlSession.selectOne("gallery.lastGalID");
    }

    @Override
    public List<Gallery> selectGal(int snum) {
        return sqlSession.selectList("gallery.selectGallery", snum);
    }

    @Override
    public Gallery selectOneGal(String gno) {
        return sqlSession.selectOne("gallery.selectOneGallery", gno);
    }

    @Override
    public int updateGal(Gallery g) {
        return sqlSession.update("gallery.updateGallery",g);
    }

    @Override
    public String readFnames(String gno) {
        return sqlSession.selectOne("gallery.readFname", gno);
    }

    @Override
    public String readFsizes(String gno) {
        return sqlSession.selectOne("gallery.readFsize", gno);
    }
}
