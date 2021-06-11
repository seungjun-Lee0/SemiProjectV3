package lsj.spring.mvc.controller;

import lsj.spring.mvc.service.BoardReplyService;
import lsj.spring.mvc.service.BoardReplyServiceImpl;
import lsj.spring.mvc.vo.Board;
import lsj.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import lsj.spring.mvc.service.BoardService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

    private BoardService bsrv;
    private BoardReplyService brsrv;

     @Autowired
     public BoardController(BoardService bsrv, BoardReplyService brsrv){
         this.bsrv = bsrv;
         this.brsrv = brsrv;
     }

    @GetMapping("/board/list")
    public ModelAndView list(ModelAndView mv, String cp) {
        if (cp == null) cp = "1";
        mv.setViewName("board/list.tiles");
        mv.addObject("bds", bsrv.readBoard(cp));
        mv.addObject("bdcnt", bsrv.countBoard());

        return mv;
    }

    @GetMapping("/board/view")
    public ModelAndView view(String bdno, ModelAndView mv) {

        bsrv.viewCountBoard(bdno);
        mv.setViewName("board/view.tiles");
        mv.addObject("bd", bsrv.readOneBoard(bdno));
        mv.addObject("rps", brsrv.readReply(bdno));
        return mv;
    }

    @GetMapping("/board/write")
    public String write() {
        return "board/write.tiles";
    }

    @PostMapping("/board/write")
    public String writeok(Board b) {
        String returnPage = "redirect:/board/list";

        bsrv.newBoard(b);
        return returnPage;
    }

    // 게시판 검색 기능 구현
    @GetMapping("/board/find")
    public ModelAndView find(ModelAndView mv, String cp,
                             String ftype, String fkey) {
        mv.setViewName("board/list.tiles");
        mv.addObject("bds",
                bsrv.readBoard(cp, ftype, fkey));
        mv.addObject("bdcnt",
                bsrv.countBoard(ftype, fkey));


        return mv;
    }

    // 댓글 쓰기
    @PostMapping("/reply/write")
    public String replyok(Reply r) {
         String returnPage = "redirect:/board/view?bdno=" + r.getBdno();

         brsrv.newComment(r);

         return returnPage;
    }

    // 대댓글 쓰기
    @PostMapping("/rereply/write")
    public String rreplyok(Reply r) {
        String returnPage = "redirect:/board/view?bdno=" + r.getBdno();

        brsrv.newReply(r);

        return returnPage;
    }
}
