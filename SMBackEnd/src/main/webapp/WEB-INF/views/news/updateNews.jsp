<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateNews</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/insertNews.css"/>
</head>
<body>
<div id="wrapper">
	<h1>📤 update news</h1>
	    <h2><a href="${pageContext.request.contextPath}/news/newsList">← newsList</a></h2>
	
	<form action="${pageContext.request.contextPath}/news/updateNews/${newsDto.newsNum}" method="post"  enctype="multipart/form-data">
        <input type="hidden" name="newsNum" value="${newsDto.newsNum}" />
        <br/>
        <label for="newsTitle">제목:</label>
        <input type="text" id="newsTitle" name="newsTitle" value="${newsDto.newsTitle}" /><br/>
        <br/>
        
        <label for="newsContent">내용:</label>
        <textarea id="newsContent" name="newsContent">${newsDto.newsContent}</textarea><br/>
        <br/>
        
                <!-- 이미지 파일 입력 -->
        <p><img src="${pageContext.request.contextPath}/${newsDto.newsImg}" alt="${news.newsImg}"/>${newsDto.newsImg}</p>
        <label for="newsImg">이미지 upload:</label>
        <input type="file" name="file" id="newsImg" />
        
        <br/>
        
        <button type="submit">수정</button>
	</form>
	</div>
</body>
</html>