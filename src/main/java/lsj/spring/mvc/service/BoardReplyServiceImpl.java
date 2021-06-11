package lsj.spring.mvc.service;

import lsj.spring.mvc.dao.BoardReplyDAO;
import lsj.spring.mvc.dao.BoardReplyDAOImpl;
import lsj.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("brsrv")
public class BoardReplyServiceImpl implements BoardReplyService{

    @Autowired private BoardReplyDAO brdao;

    @Override
    public List<Reply> readReply(String bdno) {
        return brdao.selectReply(bdno);
    }

    @Override
    public boolean newComment(Reply r) {
        boolean isIncerted = false;
        if(brdao.insertComment(r) > 0){
            isIncerted = true;
        }
        return isIncerted;
    }

    @Override
    public boolean newReply(Reply r) {
        boolean isIncerted = false;
        if(brdao.insertReply(r) > 0){
            isIncerted = true;
        }
        return isIncerted;
    }
}
