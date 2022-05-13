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
		var epTitle=document.getElementById("epTitle");
		var date=document.getElementById("date");
		var file1=document.getElementById("file1");
		var filel2=document.getElementById("file2");
		
		//alert(date.value);
		str=str+"썸네일 파일명 : "+fileName.files[0].name+"\n에피소드 제목 : "+epTitle.value +"\n등록일 : "+date.value;
		str=str+"\n첫번째 파일명 : "+file1.files[0].name+"\n두번째 파일명 : "+file2.files[0].name;
		alert(str);
		
		
	}

</script>


</head>




<body>







<div class="title">
	My Web Toon Site
</div>
<hr>



<form onsubmit="showInfo()" action="addEpOut.jsp">



<table border="1" style="height:500px">
<tr><td>






	<div class="content" style="height:200px;text-align:center; padding-top:80px;">
	썸네일 그림 파일을 추가하세요:<br>
	<input type="file" name="fn1" width="100%" height="200px" id="fn1" >
	</div>
	
	

	<div class="content" style="height:200px; text-align:center; padding-top:80px;" > 
		회차제목 : <input type="text" name="epTitle" id="epTitle"><br><br>
		등록일 : <input type="date" name="date" id="date" >
	</div>








	<div class="content" style="height:200px; text-align:center; padding-top:80px;">
	1번 웹툰 파일을 추가하세요 :<br>
	<input type="file" name="file1" width="100%" height="200px" id="file1">	
	</div>
	
	
	
	<div class="content" style="height:200px; text-align:center;padding-top:80px">
	2번 웹툰 파일을 추가하세요 : <br>
	<input type="file" name="file2" width="100%" height="200px" id="file2">
	</div>


	
	
	
	
	
	<div style="text-align:center; height:100px; width:100%; border:1px solid black; padding-top:40px; border:0px;" >
		<input type="submit" value="저장하기"> <input type="reset" value="초기화"> <input type="button" onclick="location.href='Mainpage.html';" value="취소하기" />
	</div>
	








</td></tr>
</table>




</form>



</body>
</html>