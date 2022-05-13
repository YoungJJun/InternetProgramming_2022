<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="myBean.addWebtoonOut"%>
    
<%
request.setCharacterEncoding("utf-8");

//Beans로 하면서 수정
//String sfn=request.getParameter("fn");
//String stitle=request.getParameter("title");
//String sauthor=request.getParameter("author");
//String sgenre=request.getParameter("genre");
//String sauthorsay=request.getParameter("authorsay");
//String ssummary=request.getParameter("summary");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹툰 추가 상세정보 출력</title>
<link rel="stylesheet" type="text/css" href="AddWebtoon.css">
</head>
<body>


<div class="title">
	My Web Toon Site
</div>
<hr>



<table border="1">
<tr><td>


	

	<jsp:useBean id="co" class="myBean.addWebtoonOut"/>
	<jsp:setProperty property="*" name="co"/>

	
	
	<div class="content" style="height:200px;text-align:center; padding-top:90px;">
		<input type="file" name="fn" width="100%" height="200px" id="fn" disabled >
	</div>
	
	



	<div class="content" style="height:200px; text-align:center; padding-top:50px;" > 
	
	제목 : <input type="text" name="title" id="title" readonly value= <jsp:getProperty property="title" name="co"/> > <br>
	작가명 : <input type="text" name="author" id="author" readonly value=<jsp:getProperty property="author" name="co"/>><br>
	장르 : <input type="text" name="genre" id="genre" readonly value=<jsp:getProperty property="genre" name="co"/>><br>

	</div>
	






	<div class="content" style="height:400px; border:1px soild black;" >
	작가의 말 : <br> <textarea cols="50" rows="20" name="authorsay" id="authorsay" style="resize:none; width:100%" readonly ><jsp:getProperty property="authorsay" name="co"/>
	</textarea>
	</div>
	
	
	
	<div class="content" style="height:400px;">
	줄거리 : <br> <textarea cols="50" rows="20" name="summary" id="summary" style="resize:none; width:100%" readonly><jsp:getProperty property="summary" name="co"/>
	</textarea>
	</div>


	
	
	
	
	
	
	
	<div style="text-align:center; height:100px; width:100%; border:1px solid black; padding-top:40px; border:0px;" >

	</div>
	








</td></tr>
</table>



</body>
</html>