<%@ page pageEncoding="UTF-8"%>

<header class="row">
            <div class="col"><h1>Lorem Ipsum</h1></div>
            <div class="col text-right">
                <h1><button type="button" 
                            class="btn btn-danger"
                            data-toggle="modal"
                            data-target="#loginfrm">로그인</button>
                <button type="button" 
                        class="btn btn-primary">회원가입</button></h1></div>
        </header>  
        
        <nav class="navbar navbar-expand navbar-dark bg-dark">
            <ul class="navbar-nav nav-fill w-100">
                <li class="nav-item">
                    <a href="/" class="nav-link">프로젝트소개</a></li>
                <li class="nav-item">
                    <a href="/join/agree" class="nav-link">회원가입</a></li>
                <li class="nav-item">
                    <a href="/board/list" class="nav-link">게시판</a></li>
                <li class="nav-item">
                    <a href="/pds/list" class="nav-link">자료실</a></li>
                <li class="nav-item">
                    <a href="/gallery/list" class="nav-link">갤러리</a></li>
                <li class="nav-item">
                    <a href="#" class="nav-link">관리자</a></li>
            </ul>
        </nav>
        
  <!-- 로그인 폼 모달 -->
    <div class="modal" id="loginfrm" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>로그인</h3>
                    <button type="button" 
                            class="btn btn-light">닫기</button>
                </div>
                
                <div class="modal-body">
                    <form name="loginfrm" 
                          id="loginfrm" method="post">
                        <div class="form-group row text-danger">
                            <label class="col-form-label col-4 text-right" for="userid">
                                아이디</label>
                            <input type="text" 
                                   id="userid" name="userid"
                                   class="form-control col-5
                                          border-danger">
                        </div>
                        <div class="form-group row text-danger">
                            <label class="col-form-label col-4  text-right" for="passwd">
                                비밀번호</label>
                            <input type="password" 
                                   id="passwd" name="passwd"
                                   class="form-control col-5 border-danger">
                        </div>
                        <div class="form-group row">
                            <div class="col-4"></div>
                            <div class="form-check">
                                <input type="checkbox"
                                       class="form-check-input">
                                <label class="form-check-label text-warning">
                                    로그인 상태 유지</label>
                            </div>                            
                        </div>
                    </form>
                </div>
                
                <div class="modal-footer justify-content-center">
                    <button type="button" 
                            class="btn btn-danger">로그인</button>
                    <button type="button" 
                            class="btn btn-warning">
                        아이디/비밀번호 찾기</button>
                </div>
            </div>
        </div>
    </div>  