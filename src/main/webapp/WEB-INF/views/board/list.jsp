<%@ page pageEncoding="UTF-8"%>

        <div class="main">

            <div>
                <h1><i class="bi bi-chat-fill"></i><b>자유 게시판</b></h1>
                <hr>
            </div>

            <!-- 검색창 및 새글 쓰기 버튼 -->
            <div class="row">
                    <div class="col-8 offset-1">
                        <div class="form-group row">
                            <select class="form-control col-2 border-primary" id="findtype" name="findtype">
                                <option>제목</option>
                                <option>제목+내용</option>
                                <option>작성자</option>
                                <option>내용</option>
                            </select>
                            &nbsp;
                            <input type="text" name="findkey" id="findkey" class="form-control col-4 border-primary">
                            &nbsp;
                            <button class="btn btn-primary" type="button" id="findbtn" name="findbtn">검색</button>

                        </div>
                    </div>


                    <div class="col-2 text-right">
                            <button type="button" class="btn btn-primary" id="newbdbtn">새글쓰기</button>

                    </div>
            </div>

            <!-- 게시판 테이블 -->
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
                            <tr class="text-danger bg-warning">
                                <th>공지</th>
                                <th><span class="badge badge-danger">Hot</span>
                                    카페 필수 공지 안내문입니다.
                                </th>
                                <th>운영자</th>
                                <th>2021.05.21</th>
                                <th>10</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th><a href="/mvc/board/view">오늘 날씨</a></th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>

                            <tr>
                                <th>1</th>
                                <th>오늘 날씨</th>
                                <th>zzyzzy</th>
                                <th>2021.05.21</th>
                                <th>15</th>
                                <th>531</th>
                            </tr>
                        </tbody>


                    </table>
                </div>
            </div>

            <!-- 페이지 쪽수 표현 (페이지네이션) -->
            <div class="row">
                <div class="col-12">
                    <ul class="pagination justify-content-center">
                        <li class="page-item"><a href="#" class="page-link">이전</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">6</a></li>
                        <li class="page-item"><a href="#" class="page-link">7</a></li>
                        <li class="page-item"><a href="#" class="page-link">8</a></li>
                        <li class="page-item"><a href="#" class="page-link">9</a></li>
                        <li class="page-item"><a href="#" class="page-link">다음</a></li>

                    </ul>
                </div>
            </div>

        </div>
        <script>
            $('#newbdbtn').click(function() { location.href = '/board/write'; })
            $('#joinbtn').click(function() { location.href = '/join/agree'})
        </script>
