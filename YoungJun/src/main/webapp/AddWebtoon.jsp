<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>AddWebToonPage</title>
<link rel="stylesheet" type="text/css" href="AddWebtoon.css">

<script>
	function showInfo(){
		var str=""
		var fileName=document.getElementById("fn");
		var title=document.getElementById("title");
		var author=document.getElementById("author");
		var genre=document.getElementById("genre");
		var authorsay=document.getElementById("authorsay");
		var summary=document.getElementById("summary");
		
		str=str+"파일명 : "+fileName.files[0].name+"\n제목 : "+title.value +"\n작가 : "+author.value+"\n장르 : "+genre.value;
		str=str+"\n작가의 말 : "+authorsay.value+"\n줄거리 : "+summary.value;
		
		alert(str);
		
		
	}

</script>


</head>




<body>







<div class="title">
	My Web Toon Site
</div>
<hr>




<form onsubmit="showInfo()" action="addWebtoonOut.jsp">

<table border="1">

<tr><td>


	




	<div class="content" style="height:200px;text-align:center; padding-top:90px;">
		<input type="file" name="picture" width="100%" height="200px" id="fn">
	</div>
	
	

	<div class="content" style="height:200px; text-align:center; padding-top:50px;" > 
	제목 : <input type="text" name="title" id="title"><br>
	작가명 : <input type="text" name="author" id="author"><br>
	장르 : <input type="text" name="genre" id="genre"><br>

	</div>









	<div class="content" style="height:400px; border:1px soild black;" >
	작가의 말 : <br> <textarea cols="50" rows="20" name="authorsay" id="authorsay" style="resize:none; width:100%"></textarea>
	</div>
	
	
	
	<div class="content" style="height:400px;">
	줄거리 : <br> <textarea cols="50" rows="20" name="summary" id="summary" style="resize:none; width:100%"></textarea>
	</div>


	
	
	
	
	
	
	
	<div style="text-align:center; height:100px; width:100%; border:1px solid black; padding-top:40px; border:0px;" >
	<input type="submit" value="저장하기"> <input type="reset" value="초기화"><input type="button" onclick="location.href='Mainpage.jsp';" value="취소하기" />
	</div>
	








</td></tr>
</table>



	</form>




</body>
</html>