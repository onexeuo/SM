<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>news List</h1>
	<h2><a href="/SMBackEnd">Home</a></h2>
	
	<a href="${pageContext.request.contextPath}/news/insertNews">insertNews</a><br/><br/>
	<table border="1">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>내용</th>
                <th>날짜</th>
                <th>이미지</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="news">
                <tr>
                    <td>${news.newsNum}</td>
                    <td>${news.newsTitle}</td>
                    <td onclick="location.href='${pageContext.request.contextPath}/news/detailNews/${news.newsNum}'">${news.newsContent}</td>
                    <td>${news.formattedDate}</td>
                    <td><img src="${pageContext.request.contextPath}/${news.newsImg}" alt="${news.newsImg}" width="100" height="100" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>