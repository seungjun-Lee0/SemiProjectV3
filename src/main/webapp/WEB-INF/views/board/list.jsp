<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!--
    현재 페이지에 따라 보여줄 페이지 블럭을 결정
    ex) 총페이지수가 27일 때
    cp = 1 : 1 2 3 4 5 6 7 8 9 10
    cp = 3 : 1 2 3 4 5 6 7 8 9 10
    cp = 9 : 1 2 3 4 5 6 7 8 9 10
    cp = 11 : 11 12 13 14 15 16 17 18 19 20
    cp = 27 : 21 22 23 24 25 26 27

    따라서, cp에 따라 페이지 블럭의 시작값을 계산
    perpage = 30
    startpage = ((cp-1) / 10) * 10 + 1
    endpage = startpage + 9
-->

<fmt:parseNumber var="cp" value="${param.cp}" />
<fmt:parseNumber var="sp" value="${(cp - 1) / 10}" integerOnly="true" />
<fmt:parseNumber var="sp" value="${sp * 10 + 1}" />
<fmt:parseNumber var="ep" value="${sp + 9}" />
<fmt:parseNumber var="tp" value="${bdcnt / 30}"  integerOnly="true" />

<%-- 총 게시물 수를 페이지당 게시물 수로 나눔 --%>
<c:if test="${(bdcnt%30) gt 0}">
    <fmt:parseNumber var="tp" value="${tp + 1 / 30}" integerOnly="true" />
</c:if>

<%-- 글번호 --%>
<fmt:parseNumber var="snum" value="${bdcnt - (cp - 1) * 30}" />

<%-- 페이지링크 : 검색 기능 x --%>
<c:set var="pglink" value="/board/list?cp="/>

<%-- 페이지링크 : 검색 기능 o --%>
<c:if test="${not empty param.fkey}">
    <c:set var="pglink"
           value="/board/find?ftype=${param.ftype}&fkey=${param.fkey}&cp=" />
</c:if>

        <div class="main">

            <div>
                <h1><i class="bi bi-chat-fill"></i><b>자유 게시판 ${tp} / ${bdcnt}</b></h1>
                <hr>
            </div>

            <!-- 검색창 및 새글 쓰기 버튼 -->
            <div class="row">
                    <div class="col-8 offset-1">
                        <div class="form-group row">
                            <select class="form-control col-2 border-primary" id="findtype" name="findtype">
                                <option value="title">제목</option>
                                <option value="titcont">제목+내용</option>
                                <option value="userid">작성자</option>
                                <option value="contents">내용</option>
                            </select>
                            &nbsp;
                            <input type="text" name="findkey" id="findkey"
                                   class="form-control col-4 border-primary"
                                   value="${param.fkey}">
                            &nbsp;
                            <button class="btn btn-primary" type="button" id="findbtn" name="findbtn">검색</button>

                        </div>
                    </div>


                    <div class="col-2 text-right">
                            <button type="button" class="btn btn-primary" id="newbdbtn">새글쓰기</button>

                    </div>
            </div>

            <div class="row">
                <div class="col-10 offset-1">
                    <table class="table table-striped text-center table-hover">
                        <thead style="background: #dff0d8">
                        <tr>
                            <th style="width: 7%">번호</th>
                            <th style="">제목</th>
                            <th style="width: 12%">작성자</th>
                            <th style="width: 10%">작성일</th>
                            <th style="width: 7%">추천</th>
                            <th style="width: 7%">조회</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="text-danger bg-warning"><th>공지</th>
                            <th><span class="badge badge-danger">Hot</span>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            </th>
                            <th>운영자</th>
                            <th>2021.05.21</th>
                            <th>10</th>
                            <th>521</th>
                        </tr>

                        <c:forEach var="bd" items="${bds}">
                            <tr>
                                <td>${snum}</td>
                                <td><a href="/board/view?bdno=${bd.bdno}">${bd.title}</a></td>
                                <td>${bd.userid}</td>
                                <td>${bd.regdate}</td>
                                <td>${bd.thumbup}</td>
                                <td>${bd.views}</td>
                                <c:set var="snum" value="${snum-1}"/>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>

            <!-- 페이지 쪽수 표현 (페이지네이션) -->
            <div class="row">
                <div class="col-12">
                    <ul class="pagination justify-content-center">

                        <%-- '이전'버튼이 작동해야 할 떄는 sp가 11보다 클 때--%>
                        <li class="page-item <c:if test="${sp lt 11}">disabled</c:if>">
                            <a href="${pglink}${sp-10}" class="page-link">이전</a></li>

                        <%-- 반복문을 이용해서 페이지 링크 생성 --%>
                        <c:forEach var="i" begin="${sp}" end="${ep}" step="1">

                            <%-- 출력하는 페이지 i가 총페이지 수 보다 작거나 같을 동안만 출력 --%>
                            <c:if test="${i-1 le tp}">
                                <c:if test="${i eq cp}">
                                    <li class="page-item active">
                                        <a href="${pglink}${i}" class="page-link">${i}</a></li>
                                </c:if>

                                <c:if test="${i ne cp}">
                                    <li class="page-item">
                                        <a href="${pglink}${i}" class="page-link">${i}</a></li>
                                </c:if>
                            </c:if>

                        </c:forEach>

                            <%-- '다음' 버튼이 작동되어야 할 때 --%>
                        <li class="page-item <c:if test="${ep gt tp}">disabled</c:if>">
                            <a href="${pglink}${sp+10}" class="page-link">다음</a></li>

                    </ul>
                </div>
            </div>
        </div>