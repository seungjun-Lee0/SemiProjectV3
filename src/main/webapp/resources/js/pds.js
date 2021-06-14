// list
$('#newpdsbtn').on('click', function (){
    location.href='/pds/write';

});

// write
$('#newpds').on('click', function (){
    if($('#title').val() == '') alert("제목을 작성하세요");
    else if ($('#contents').val() == '') alert("본문을 작성하세요");
    else if (grecaptcha.getResponse() == '')
        alert('자동가입 방지 확인 필요!!');
    else {
        const frm = $('#pdsfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/pds/write');
        frm.submit();
    }
});