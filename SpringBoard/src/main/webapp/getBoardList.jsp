<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	body{margin:50px 300px 50px 300px;}
	#head th{background-color:#ffffff;}
	#search{float:right;}
</style>

<title><spring:message code="message.board.list.mainTitle"/></title>
</head>
<body>
		<h1><spring:message code="message.board.list.mainTitle"/></h1>
		<h3>
			${userName }<spring:message code="message.board.list.welcomeMsg"/><a href="logout.do"><button type="button" class="btn btn-link">Log-out</button></a>
		</h3>
		<!-- 검색 시작 -->
		<form action="getBoardList.jsp" method="post" class="form-inline">
			<div id="search">
				<select name="searcnCondition" class="form-control">
					<c:forEach items="${conditionMap }" var="option">
						<option value="${option.value }">${option.key }
					</c:forEach>
				</select>
				<input name="searchKeyword" type="text"  class="form-control"/> <input type="submit"
					value="<spring:message code="message.board.list.search.condition.btn"/>"  class="btn btn-default"/>
			</div>
		</form>
		
		<!-- 검색 종료 -->
		<br><br>
		<table class="table table-striped" cellpadding="0" cellspacing="0">
			<tr id="head">
				<th width="100"><spring:message code="message.board.list.table.head.seq"/></th>
				<th width="200"><spring:message code="message.board.list.table.head.title"/></th>
				<th width="150"><spring:message code="message.board.list.table.head.writer"/></th>
				<th width="150"><spring:message code="message.board.list.table.head.regDate"/></th>
				<th width="100"><spring:message code="message.board.list.table.head.cnt"/></th>
			</tr>
			<c:forEach items="${boardList }" var="board">
			<tr>
				<td>${board.seq }</td>
				<td align="left"><a href="getBoard.do?seq=${board.seq }">
					${board.title }</a></td>
				<td>${board.writer }</td>
				<td>${board.regDate }</td>
				<td>${board.cnt }</td>
			</tr>
			</c:forEach>
		</table>
		<br> <a href="insertBoard.jsp"><button type="button" class="btn btn-default"><spring:message code="message.board.list.link.insertBoard"/></button></a>

</body>
</html>