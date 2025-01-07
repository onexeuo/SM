<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailNews</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/detailNews.css"/>

</head>
<body>
<div id="wrapper">
<h1>detail news</h1>
    <h2><a href="${pageContext.request.contextPath}/news/newsList">← newsList</a></h2>

	    <span>번호 : </span><p>${newsDto.newsNum}</p><br /><br />
	    <span>제목 : </span><p>${newsDto.newsTitle}</p><br /><br />
	    <span>내용 : </span><p>${newsDto.newsContent}</p><br /><br />
	    <span>날짜 : </span><p>${newsDto.formattedDate}</p><br /><br />
	    <span>업데이트 : </span><p><fmt:formatDate value="${newsDto.updateDate}" pattern="yyyy-MM-dd HH:mm:ss" /></p><br /><br />
	    <p><img src="${pageContext.request.contextPath}/${newsDto.newsImg}" alt="${news.newsImg}" />${newsDto.newsImg}</p><br /><br />
		<a class="update" href="${pageContext.request.contextPath}/news/updateNews/${newsDto.newsNum}">update</a>
	    <a class="delete" href="${pageContext.request.contextPath}/news/deleteNews/${newsDto.newsNum}"onclick="return confirm('정말 삭제하시겠습니까?')">delete</a>
     </div>    
     <script type="text/javascript">
     	console.log(${news.updateDate});
     </script>           
</body>
</html>