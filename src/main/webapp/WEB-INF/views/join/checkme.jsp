<%@ page pageEncoding="UTF-8"%>

<div class="main">

<div>
<h2><i class="bi bi-people-fill"></i><b>회원가입</b></h2>
<hr>
</div>
<nav>
<ul class="breadcrumb">
<li class="breadcrumb-item active disabled">
<button type="button" disabled class="btn btn-success">이용약관</button></li>
<li class="breadcrumb-item active">
<button type="button" disabled class="btn btn-success">가입인증</button></li>
<li class="breadcrumb-item">
<button type="button" disabled class="btn btn-light">회원정보입력
</button></li>
<li class="breadcrumb-item">
<button type="button" disabled class="btn btn-light">가입완료
</button></li>
</ul>

</nav>

<div>
<h3><b>가입인증</b></h3>
<small>회원으로 가입하는 방법에는 2가지 방법 이있습니다. 아래에서 원하는 방법을 선택해주세요.<div></div>입력하신 정보는 가입완료 전까지 본 사이트에 저장되지 않습니다.</small>
<hr>
</div>
<div class="card card-body bg-light">
<h3>회원가입</h3>
<form id="checkfrm1" name="checkfrm1">
<div class="row">
<div class="col-4 offset-1">
<div class="form-group row">
<label class="col-4 col-form-label text-warning
text-right"
for="name">이름</label>
<input type="text" name="name" id="name"
class="border-warning form-control
col-6">
</div>
<div class="form-group row">
<label class="col-4 col-form-label text-warning
text-right"
for="byear">생년월일</label>
<select id="byear" name="byear"
class="form-control col-3 border-warning">
<option>년</option>
<option>2021</option>
<option>2020</option>
<option>2019</option>
</select>
&nbsp;
<select id="bmonth" name="bmonth"
class="form-control col-2 border-warning">
<option>월</option>
<option>01</option>
<option>02</option>
<option>03</option>
</select>
&nbsp;
<select id="bday" name="bday"
class="form-control col-2 border-warning">
<option>일</option>
<option>01</option>
<option>02</option>
<option>03</option>
</select>
</div>
<div class="form-group row">
<label class="col-4
text-warning text-right">성별</label>
<div class="custom-control custom-radio">
<input type="radio" id="gmale"
name="gender" value="m"
class="custom-control-input">
<label for="gmale" class="custom-control-label">남자</label>
</div>
<div class="custom-control custom-radio">
<input type="radio" id="gfemale"
name="gender" value="f"
class="custom-control-input">
<label for="gfemale" class="custom-control-label">여자</label>
</div>
</div>
</div>
<div class="col-5">
<ul style="color:blue; font-weight: bold">
<li>주민등록번호 입력 없이 전화번호로 회원가입이 가능합니다. </li>
<li>이름, 생년월일과 성별은 추후 변경할 수 없습니다.</li>
<li>휴대폰 가입인증을 하셔야 공개 게시판 이용이 가능합니다.</li>
</ul>
</div>

</div>
<div class="row">
<div class="col text-center">
<hr style="width: 80%">
<button type="button" id="chk1btn"
class="btn btn-primary"><i class="bi bi-check"></i>확인하기</button>
<button type="button" id="cancel1btn"
class="btn btn-danger"><i class="bi bi-x"></i>취소하기</button>
</div>
</div>
</form>
</div>
<div>&nbsp;</div>
<div class="card card-body bg-light">
<h3>실명확인 회원가입</h3>
<form id="checkfrm2" name="checkfrm2">
<div class="row">
<div class="col-4 offset-1">
<div class="form-group row">
<label class="col-4 col-form-label text-warning
text-right"
for="name">이름</label>
<input type="text" name="name" id="name2"
class="border-warning form-control
col-6">
</div>
<div class="form-group row">
<label class="col-4 col-form-label text-warning
text-right"
for="jumin1">주민번호</label>
<input type="text" id="jumin1" name="jumin1"
class="form-control col-3 border-warning">
<i class="bi bi-dash"></i>
<input type="password" id="jumin2" name="jumin2"
class="form-control col-3 border-warning">
</div>

<div class="form-group row">
<div class="col-4"></div>
<input type="checkbox" id="jumincheck" name="jumincheck" class="custom-control-input">
<label for="jumincheck" class="custom-control-label text-warning">
주민등록번호 처리에 동의합니다.</label>
</div>
</div>
<div class="col-5">
<ul style="color:blue; font-weight: bold">
<li>실명확인 회원가입시 공개 게시판 이용이 가능합니다. </li>
<li>타인의 주민등록번호를 임의로 사용하면 <span style="color: red">'주민등록법'에 의해 3년 이하의 징역 또는 1천만원이하의 벌금</span>이 부과할 수 있습니다.</li>
<li>입력하신 주민등록번호는 <span style="color:red">별도 저장되지 않으며, 신용평가기관을 통한 실명확인용</span>으로만 이용됩니다.</li>
<li>개인정보보호법에 따라 <span style="color: red">이용 동의</span>를 받습니다.</li>
</ul>
</div>

</div>
<div class="row">
<div class="col text-center">
<hr style="width: 80%">
<button type="button" id="chk2btn"
class="btn btn-primary"><i class="bi bi-check"></i>확인하기</button>
<button type="button" id="cancel2btn"
class="btn btn-danger"><i class="bi bi-x"></i>취소하기</button>
</div>
</div>
</form>


</div>
</div>

