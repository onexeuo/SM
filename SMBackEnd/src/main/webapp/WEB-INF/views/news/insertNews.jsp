<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert News</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/insertNews.css"/>
</head>
<body>
<div id="wrapper">
    <h1>🖍️ Insert News</h1>
    <h2><a href="${pageContext.request.contextPath}/news/newsList">← newsList</a></h2>
     <form action="${pageContext.request.contextPath}/news/insertNews" method="post" enctype="multipart/form-data"> 
    <!-- <form action="/news/insertNews" method="post" > -->
        <!-- 제목 입력 -->
        <div>
        <label for="newsTitle">제목:</label>
        <input type="text" name="newsTitle" id="newsTitle" required />
        </div>
        <br/>
        
        <!-- 내용 입력 -->
        <div>
        <label for="newsContent">내용:</label>
        <textarea name="newsContent" id="newsContent" required></textarea>
        </div>
        <br/>
        
        <!-- 이미지 파일 입력 -->
        <p><img src="${newsDto.newsImg}" alt="${news.newsImg}" width="100" height="100" />${newsDto.newsImg}</p>
        <label for="newsImg">이미지 upload:</label>
        <input type="file" name="file" id="newsImg" />
        <br/>
        
        <!-- 제출 버튼 -->
        <button type="submit">뉴스 등록</button>
    </form>
</div>
</body>
</html>
