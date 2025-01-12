<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news list</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/newsList.css"/>
</head>
<body>
<div id="wrapper">
	<h1>📑 news list</h1>
	<h2><a href="/SM">← Home</a></h2>
	<a class="insert"  href="${pageContext.request.contextPath}/news/insertNews"> + insert News</a><br/><br/>	
	<table id="table" border="1">
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
                <tr onclick="location.href='${pageContext.request.contextPath}/news/detailNews/${news.newsNum}'">
                    <td>${news.newsNum}</td>
                    <td>${news.newsTitle}</td>
                    <td >${news.newsContent}</td>
                    <td>create : ${news.formattedDate}<br />update : <fmt:formatDate value="${news.updateDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    <td><img src="${pageContext.request.contextPath}/${news.newsImg}" alt="${news.newsImg}" width="100" height="100" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>