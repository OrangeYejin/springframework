<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
	body{margin:50px 600px 50px 600px;}
</style>
<title><spring:message code="message.user.login.title"/></title>
</head>
<body>
	
		<h1><spring:message code="message.user.login.title"/></h1>
		<a href="login.do?lang=en"><spring:message code="message.user.login.language.en"/></a>&nbsp;&nbsp;
		<a href="login.do?lang=ko"><spring:message code="message.user.login.language.ko"/></a>
		<hr>
		<form action="login.do" method="post">
			<div class="form-group">
				<label for="ID"><spring:message code="message.user.login.id"/></label>
				<input type="text" id="ID" class="form-control" name="id" value="${userVO.id }" placeholder="아이디"/>
			</div>
			<div class="form-group">
				<label for="passwd"><spring:message code="message.user.login.password"/></label>
				<input type="password" id="pw" class="form-control" name="password" value="${userVO.id }" placeholder="비밀번호"/>
			</div>
			<input type="submit" class="btn btn-default" value="<spring:message code="message.user.login.loginBtn"/>" /><br><br><br>
			<img src="res/Q.jpg" alt="사진" width="335px"/>
		
		</form>
		<hr>
	
</body>
</html>