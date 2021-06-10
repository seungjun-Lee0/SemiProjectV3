
// new board
$('#newbdbtn').on('click', function () {
   location.href = '/board/write';
});

// go to list
$('#listbdbtn').on('click', function () {
   location.href = '/board/list';
});

// save board
$('#savebdbtn').on('click', function () {
   if($('#title').val() == '')
      alert("제목을 입력하세요")
   else if($('#contents').val() == '')
      alert("본문을 입력하세요")
   else if(grecaptcha.getResponse() == ''){
      alert("자동입력방지를 해주세요")
   }
   else{
         const frm= $('#boardfrm');
         frm.attr('method','post');
         frm.attr('action','/board/write');
         frm.submit();
   }
});

// search board
$('#findbtn').on('click', function () {
   if ($('#findkey').val() == ''){
       alert('검색할 내용을 입력하세요');
   }
   else {
       let qry = '?ftype=' + $('#findtype').val();
       qry += "&fkey=" + $('#findkey').val() + "&cp=1";
       let url = '/board/find' + qry;
       location.href=url;
   }
});