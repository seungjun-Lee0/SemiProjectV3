// agree
$('#okagree').on('click', function () {
    if (!$('#agree1').is(':checked')){
        alert('이용약관에 동의하세요');
    }
    else if(!$('#agree2').is(':checked')){
        alert('개인정보 수집에 동의하세요!');
    }
    else{
        location.href = '/join/checkme'
    }
});

$('#noagree').on('click', function () {
    location.href = '/';
});

// checkme
$('#chk2btn').on('click',function () {
    if ($('#name2').val() == '') alert('이름을 입력하세요!');
    else if ($('#jumin1').val() == '' || $('#jumin2').val() == '') alert('주민번호를 입력하세요!');
    else if (!$('#jumincheck').is(':checked')){
        alert('주민번호 이용동의에 체크하세요!')
    }
    else{
        const frm = $('#checkfrm2')
        frm.attr('action','/join/joinme');
        frm.attr('method', 'POST');
        frm.submit();
    }
});
$('#cancel2btn').on('click',function () {
    location.href = '/';
});

// userid check
$('#userid').on('blur', function () {
    checkuserid();
})
$('#userid').on('focus', function () {
    $('#uidmsg').text('8~16자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.');
    $('#uidmsg').attr('style','color:black');
})
function checkuserid() {
    let uid = $('#userid').val();
    if (uid == ''){
        $('#uidmsg').text('8~16자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.');
        $('#uidmsg').attr('style','color:black');
        return;
    }
    $.ajax({url: '/join/checkuid',
        type: 'GET',
        data: { uid: uid }
    })
        .done(function (data) {
            let msg = '사용 불가능한 아이디 입니다.';
            $('#uidmsg').attr('style','color:red');
            if (data.trim() == '0'){
                msg = '사용 가능한 아이디 입니다.'
                $('#uidmsg').attr('style','color:blue');
            }
            $('#uidmsg').text(msg);
        })
        .fail(function (xhr, status, error) {
            alert(xhr.status + '' + error);
        })

}

// check euqal passwd
$('#repasswd').on('blur', function (){
    if($('#passwd').val() != $('#repasswd').val()){
        $('#pwdmsg').text('비밀번호를 동일하게 입력하세요');
        $('#pwdmsg').attr('style','color:red');
    }
});
$('#repasswd').on('focus', function (){
    $('#pwdmsg').text('이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.');
    $('#pwdmsg').attr('style','color:black');
});

// joinme
$('#joinbtn').on('click', function () {
    if ($('#userid').val() == '')
        alert('아이디를 입력하세요');
    else if ($('#passwd').val() == '')
        alert('비밀번호를 입력하세요');
    else if ($('#repasswd').val() == '')
        alert('비밀번호를 다시 한번 입력하세요');
    else if ($('#passwd').val() != $('#repasswd').val())
        alert('비밀번호를 동일하게 입력하세요');
    // else if ($('#zip1').val() == '' || $('#zip2').val() == '')
    //     alert('우편번호를 입력하세요');
    else if ($('#addr1').val() == '' || $('#addr2').val() == '')
        alert('기본주소 또는 나머지 주소를 입력하세요');
    else if ($('#email1').val() == '' || $('#email2').val() == '')
        alert('이메일을 입력하세요');
    else if ($('#tel1').val() == '' || $('#tel2').val() == '' || $('#tel3').val() == '')
        alert('전화번호를 입력하세요');
    else if (grecaptcha.getResponse() == '')
        alert('자동가입 방지 확인');
    else {
        $('#zipcode').val($('#zip1').val() + '-' + $('#zip2').val());
        $('#jumin').val($('#jumin1').val() + '-' + $('#jumin2').val());
        $('#email').val($('#email1').val() + '@' + $('#email2').val());
        $('#phone').val(
            $('#tel1').val() + '-' + $('#tel2').val()
            + '-' + $('#tel3').val());
        const frm = $('#joinfrm');
        frm.attr('action','/join/joinok');
        frm.attr('method','POST');
        frm.submit();
        }
});
$('#cancelbtn').on('click', function () {
    location.href = '/';
});

// show zipcode
$('#findzipbtn').on('click', function (){
    $.ajax({
        url: '/join/zipcode',
        type: 'GET',
        data: { dong: $('#dong').val() }
    })
        .done(function(data) {
            // 서버에서 넘어온 데이터는 JSON 형식임
            let opts = "";
            $.each(data, function () { // 행단위 반복처리
                let zip = '';
                $.each(this, function (k, v) { // 열단위 반복처리
                    if(v != null) zip += v + ' ';
                });
                opts += '<option>' + zip + '</option>';
            }); // 행단위 반복처리
            $('#addrlist').find('option').remove(); // 기존 option 태그 삭제
            $('#addrlist').append(opts)
        })
        .fail(function (xhr,status,error){
            alert(xhr.status + '' + error);
        });
});

// zipcode modal prevent enter key
$('input[type="text"]').keydown(function () {
   if (event.keyCode === 13){
       event.preventDefault();
   }
});

// send zipcode
$('#sendzip').on('click', function() {
    let addr = $('#addrlist option:selected').val();
    if (addr == undefined){
        alert('주소를 선택하세요');
        return;
    }
    else{
        let addrs = addr.split(' '); // 선택한 주소를 공백으로 나눔

        $('#zip1').val( addrs[0].split('-')[0] );
        $('#zip2').val( addrs[0].split('-')[1]);
        $('#addr1').val(addrs[1] + ' ' + addrs[2] + ' ' + addrs[3]);

        // 검색창 닫기
        $('#zipmodal').modal('hide');
    }
})
// send email2
// option:selected => select 요소들 중 선택한 요소의 값 알아냄
$('#email3').on('change', function() {
    let val = $('#email3 option:selected').text();
    if(val == "직접입력하기"){
        $('#email2').attr('readonly', false);
        $('#email2').val('');
    }
    else {
        $('#email2').attr('readonly', true);
        $('#email2').val(val);
    }
})