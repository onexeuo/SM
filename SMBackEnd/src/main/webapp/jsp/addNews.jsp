<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add news</title>
<script type="text/javascript" src="../static/js/addNews.js"></script>
<script>
	
</script>
</head>
<body>
	<div id="wrapper">
		<h1>Add News</h1>
		<div id="date">
			현재 시간: <span id="current-time"></span>
		</div><br />
		<div id="title">
			TITLE : <input type="text"/>
		</div><br />
		<div id="title">
			CONTENT : <input type="text"/>
		</div><br />
		<button type="submit" >add</button>
	</div>
</body>
</html>