<%@ page pageEncoding="UTF-8"%>

        <div class="main" class="row">
            <h1><i class="bi bi-chat-fill"></i><b>자유 게시판</b></h1>
            <hr>
            <div class="row">
                <div class="col-2"></div>
                <div class="board col-4">
                    <h3><i class="bi bi-plus-circle-fill"></i><b>새글 쓰기</b></h3>
                </div>
                <div class="board col-4 text-right">
                    <button type="button" id="golist" name="golist">목록으로</button>
                </div>
                <div class="col-2"></div>
            </div>
            <div class="row">
                <div class="col-2"></div>
                <div class="col-8 card card-body bg-light">
                    <form id="boardfrm" class="boardfrm">
                        <div class="row">
                            <div class="col">
                                <div class="form-group row">
                                <label class="col-2 col-form-label text-danger
                                              text-right"
                                       for="title">제목</label>
                                <input type="text" name="title" id="title"
                                       class="border-danger form-control col-8">
                                </div>

                                <div class="form-group row">
                                <label class="col-2 col-form-label text-danger
                                              text-right"
                                       for="writer">작성자</label>
                                <input type="text" name="writer" id="writer"
                                       class="border-danger form-control col-8
                                              bg-light">
                                </div>

                                <div class="form-group row">
                                <label class="col-2 col-form-label text-danger
                                              text-right"
                                       for="content">본문내용</label>
                                <input type="text" name="content" id="content"
                                       class="border-danger form-control col-8"
                                       style="height: 500px;">
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label text-danger text-right"
                                       for="capcha">자동<br>입력방지</label>
                                    <div class="g-recaptcha"
								   		data-sitekey="6LfgIwgbAAAAADUN2Doy8DqAgGN8wzal1UyVPate"
								   		data-callback="onSubmit"></div>
                                </div>

                                <hr>

                                <div class="form-group row">
                                        <div class="col text-center">
                                            <button type="button" id="submit" name="submit" class="btn btn-primary text-right">입력완료</button>
                                            <button type="button" id="submit" name="submit" class="btn btn-danger text-right">취소하기</button>
                                        </div>
                                </div>

                            </div>
                        </div>

                    </form>
                </div>
                <div class="col-2"></div>
            </div>



        </div>
