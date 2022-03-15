<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

<style>
	*{font-family: 'Noto Sans KR', sans-serif;}
	body{margin:50px 300px 50px 300px;}
	input[type="submit"]{margin-left:90px;}
	#boards{text-align:center;}
</style>

<head><title>새글등록</title>
<body>
		<h1>글 등록</h1>
		<a href="Logout_proc.jsp"><button type="button" class="btn btn-link">Log-out</button></a>
		<hr>
		<form action="insertBoard.do" method="post" enctype="multipart/form-data" class="form-horizontal">
			<div class="form-group">
			    <label for="title" class="control-label col-sm-2">제목</label>
			    <div class="col-sm-8">
			    <input type="text" class="form-control" id="title" name="title"></div>
		  	</div>
		  	<div class="form-group">
			    <label for="writer" class="control-label col-sm-2">작성자</label>
			    <div class="col-sm-8">
			    <input type="text" class="form-control" id="writer" name="writer"></div>
		  	</div>
		  	<div class="form-group">
			    <label for="content" class="control-label col-sm-2">내용</label>
			    <div class="col-sm-8">
			    <textarea name="content" cols="40" rows="10" class="form-control"></textarea></div>
		  	</div>
		  	<div class="form-group">
			    <label for="uploadFile" class="control-label col-sm-2">업로드</label>
			    <div class="col-sm-8">
			    <input type="file" class="form-control" id="uploadFile" name="uploadFile"></div>
		  	</div>
		  	<input type="submit" class="btn btn-default" value="새 글 등록" />
		</form>
		<hr>
		<div id="boards">
			<a href="getBoardList.do">글 목록 가기</a>
		</div>
		
</body>
</html>