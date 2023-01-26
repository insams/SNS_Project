<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

#boardList {
	text-align: center;
	width: 400px;
	height: 400px;
	display: inline-block;
	align-content: space-around;
}

#adverList {
	text-align: center;
	width: 400px;
	height: 400px;
	display: inline-block;
	align-content: space-around;
}
</style>
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${boardList}" var="board">
		<div id="boardList">
			<div id="board">
				<h3>${board.id}</h3>
				<a href="getBoard?bSeq=${board.bSeq}"> <img
					src="images/${board.upload}" />
				</a>
				<%@include file="comment.jsp"%>
			</div>
		</div>
		<c:if test="${board.bSeq%3==0}">
			<c:forEach items="${adverList}" var="advertise" varStatus="status">
			 
				<div id="adverList">
					<div id="advertise">
						<h3>${advertise.id}</h3>
						<a href="getBoard?bSeq=${advertise.aSeq}"> <img
							src="adverimages/${advertise.img}" />
						</a>
						<%@include file="comment.jsp"%>
					</div>
				</div>
			 
			</c:forEach>


		</c:if>
	</c:forEach>
	

</body>
</html>