<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="myBean.addEpOut"%>
    
    <%
    request.setCharacterEncoding("utf-8");

    String sEptitle=request.getParameter("epTitle");
    String Date=request.getParameter("date");
    
    
  
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에피소드 추가 상세정보 출력</title>
<link rel="stylesheet" type="text/css" href="AddWebtoon.css">
</head>
<body>


<div class="title">
	My Web Toon Site
</div>
<hr>

<table border="1" style="height:500px">
<tr><td>



	<jsp:useBean id="co" class="myBean.addEpOut"/>
	<jsp:setProperty property="*" name="co"/>


	<div class="content" style="height:200px;text-align:center; padding-top:80px;">
	썸네일 그림 파일을 추가하세요:<br>
	<input type="file" name="picture" width="100%" height="200px" id="fn" >
	</div>
	
	

	<div class="content" style="height:200px; text-align:center; padding-top:80px;" > 
		회차제목 : <input type="text" name="epTitle" id="epTitle" readonly value=<jsp:getProperty property="epTitle" name="co"/>><br><br>
		등록일 : <input type="date" name="date" id="date" disabled value=<jsp:getProperty property="date" name="co"/>>
	</div>








	<div class="content" style="height:200px; text-align:center; padding-top:80px;">
	1번 웹툰 파일을 추가하세요 :<br>
	<input type="file" name="file1" width="100%" height="200px" id="file1" disabled>	
	</div>
	
	
	
	<div class="content" style="height:200px; text-align:center;padding-top:80px">
	2번 웹툰 파일을 추가하세요 : <br>
	<input type="file" name="file2" width="100%" height="200px" id="file2" disabled>
	</div>


	
	
	
	
	
	<div style="text-align:center; height:100px; width:100%; border:1px solid black; padding-top:40px; border:0px;" >
		
	</div>
	








</td></tr>
</table>


</body>
</html>