<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<title>유토피아 글쓰기</title>
</head>
<body>
	<center>
		<br />
		<br />
		<br />
		<script type="text/javascript">
			function cancelButton() {
				if (confirm("글 목록으로 돌아가시겠습니까?") == true) {
					document.move.submit();
				} else {
					return;
				}
			}
			function button_event() {
				if (document.getElementById("title").value == "") {
					alert("글제목을 입력하세요.");
					return false;
				}
				if (document.getElementById("content").value == "") {
					alert("글 내용을 입력하세요.");
					return false;
				}

				var ans = confirm("글을 등록하시겠습니까?");
				if (ans == true) { //확인
					alert("등록완료");
					document.form.submit();
				} else { //취소
					alert("취소");
					return false;
				}
			}
		</script>
		<h2>글쓰기</h2>
		<!-- <form action="../utopia/utoinsert.do" method="post" onSubmit="return checking(this)"> -->
		<form action="../utopia/utoinsert.do" method="post" name="form">
			<input type="hidden" name="boa_number" value="${list.boa_number }">
			글 제목&nbsp;&nbsp;<input type="text" id="title" class="textbox"
				name="boa_title" size="50" /><br />
			<br /> 글 내용<br />
			<br />
			<textarea class="textbox" id="content" name="boa_content" cols="100"
				rows="20">
</textarea>
			<br />
			<br /> <input type="button" class="myButton"
				onclick="button_event();" value="작성하기"> <input type="button"
				class="myButton" value="취소하기" onclick="cancelButton()"><br />
			<br />
			<br />

			<h3>
				<a href="../page/page.do">처음으로</a>
			</h3>
		</form>
		<form action="../page/page.do" name="move">
</form>
	</center>
</body>
</html>