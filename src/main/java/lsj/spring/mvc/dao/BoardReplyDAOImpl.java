package lsj.spring.mvc.dao;

import lsj.spring.mvc.vo.Reply;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("brdao")
public class BoardReplyDAOImpl implements BoardReplyDAO{

    @Autowired private SqlSession sqlSession;

    @Override
    public List<Reply> selectReply(String bdno) {
        return sqlSession.selectList("bdreply.selectReply",bdno);
    }

    @Override
    public int insertComment(Reply r) {
        r.setRpno(selectLastRno());
        return sqlSession.insert("bdreply.insertComment", r);
    }

    @Override
    public int insertReply(Reply r) {
        return sqlSession.insert("bdreply.insertComment", r);
    }

    private String selectLastRno() {
        return sqlSession.selectOne("bdreply.selectLastRno");
    }
}
