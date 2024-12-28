<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailNews</title>
</head>
<body>
    <h2><a href="${pageContext.request.contextPath}/news/newsList">go newsList</a></h2>

                    <p>${newsDto.newsNum}</p>
                    <p>${newsDto.newsTitle}</p>
                    <p>${newsDto.newsContent}</p>
                    <p>${newsDto.formattedDate}</p>
                    <p><img src="${pageContext.request.contextPath}/${newsDto.newsImg}" alt="${news.newsImg}" width="100" height="100" />${newsDto.newsImg}</p>
					<a href="${pageContext.request.contextPath}/news/updateNews/${newsDto.newsNum}">update</a>
                    <a href="${pageContext.request.contextPath}/news/deleteNews/${newsDto.newsNum}"onclick="return confirm('정말 삭제하시겠습니까?')">delete</a>
                    
</body>
</html>