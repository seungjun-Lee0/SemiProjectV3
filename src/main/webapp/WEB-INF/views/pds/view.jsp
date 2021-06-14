<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%-- 첨부파일 아이콘 선택 --%>
<c:set var="atticon1" value="${p.ftype1}" />
<c:if test="${p.ftype1 ne 'exe' and p.ftype1 ne 'png' and p.ftype1 ne 'txt'}">
    <c:set var="atticon1" value="file" />
</c:if>

<c:set var="atticon2" value="${p.ftype2}" />
<c:if test="${p.ftype2 ne 'exe' and p.ftype2 ne 'png' and p.ftype2 ne 'txt'}">
    <c:set var="atticon2" value="file" />
</c:if>
<c:set var="atticon3" value="${p.ftype3}" />
<c:if test="${p.ftype3 ne 'exe' and p.ftype3 ne 'png' and p.ftype3 ne 'txt'}">
    <c:set var="atticon3" value="file" />
</c:if>


<div class="main" class="row">
    <div>
        <h1><i class="bi bi-chat-fill"></i><b>자유 게시판</b></h1>
        <hr>
    </div>

    <div class="row">
        <div class="col-4 offset-1">
            <button type="button" class="btn btn-light"><i class="bi bi-arrow-left-circle-fill"></i> 이전 게시물</button>
            <button type="button" class="btn btn-light"><i class="bi bi-arrow-right-circle-fill"></i> 다음 게시물</button>
        </div>
        <div class="col-6 text-right">
            <button type="button" class="btn btn-light"><i class="bi bi-plus-circle-fill"></i> 새글쓰기</button>
        </div>
    </div>


    <!-- 본문 -->
    <div class="row">
       <table class="table col-10 offset-1">
           <tr class="tbbg1"><th colspan="2">
               <h2>${p.title}</h2>
               </th></tr>
           <tr class="tbbg2">
            <td style="width: 50%">${p.userid}</td>
            <td class="text-right">${p.regdate} / ${p.thumbup} / ${p.views}</td>
           </tr>
           <tr class="tbbg3 bdcsize"><th colspan="2">
               <p>${p.contents}</p>
               </th></tr>
                <tr>
                    <td colspan="2" class="patxt">
                        <img src="/img/${atticon1}.png" />${p.fname1} (${p.fsize1}KB, ${p.fdown1}회 다운로드함)</td>
                </tr>
                <c:if test="${p.fname2 ne '-'}">
                    <tr>
                        <td colspan="2" class="patxt">
                            <img src="/img/${atticon2}.png" /></i>${p.fname2} (${p.fsize2}KB, ${p.fdown2}회 다운로드함)</td>
                    </tr>
                </c:if>
                <c:if test="${p.fname3 ne '-'}">
                <tr>
                    <td colspan="2" class="patxt">
                        <img src="/img/${atticon3}.png" /></i>${p.fname3} (${p.fsize3}KB, ${p.fdown3}회 다운로드함)</td>
                </tr>
                </c:if>
        </table>
    </div>

    <div class="row">
        <div class="col-4 offset-1">
            <button type="button" class="btn btn-warning"><i class="bi bi-pencil"></i>수정하기</button>
            <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i>삭제하기</button>
        </div>
        <div class="col-6 text-right">
            <button type="button" class="btn btn-light"><i class="bi bi-list"></i>목록으로</button>
        </div>
    </div>


    <div class="row">
        <div class="col-10 offset-1">
            <h3><i class="bi bi-chat">나도 한마디</i></h3>
        </div>

        <table class="col-10 offset-1">
            <tr>
                <td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>오늘 날씨가 정말 좋네요 ㅋㅋ</p>
                </td>

            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">2021.05.21 10:10:10</div>
                    <p>오늘 날씨가 정말 좋네요 ㅋㅋ</p>
                </td>
            </tr>

            <tr>
                <td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>오늘 날씨가 정말 좋네요 ㅋㅋ</p>
                </td>
            </tr>

            <tr>
                <td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>오늘 날씨가 정말 좋네요 ㅋㅋ</p>
                </td>
            </tr>
        </table>
    </div>


    <div class="row">
        <form name="replyfrm" id="replyfrm"
              class="card card-body bg-light col-10 offset-1">
            <div class="form-group row justify-content-center">
                <label class="form-col-label col-2 pushdwn text-center" for="reply">작성자</label>
                <textarea class="form-control col-7 border-danger" name="reply" id="reply" rows="5"></textarea>
                &nbsp;
                <button type="button" class="btn btn-dark form-control pushdwn col-2">댓글쓰기</button>
            </div>
        </form>

    </div>

</div>
