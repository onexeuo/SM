<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
<script type="text/javascript" src="../static/js/news.js"></script>
<script>
	
</script>
</head>
<body>
	<div id="wrapper">
		<h1>News</h1>
				<a href="/SMBackEnd/news/list">list</a>
		
		<ul id="listHeader">
			<li>number</li>
			<li>title</li>
			<li>content</li>
			<li>date</li>
		</ul>
		<ul id="listBody">
			<c:forEach var="news" items="${newsList}">
				<li>${news.newstitle}</li>
				<li>${news.newscontent}</li>
				<li>${news.newsdate}</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>