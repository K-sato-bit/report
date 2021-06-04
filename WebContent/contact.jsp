<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>問い合わせフォーム</title>
<link rel="stylesheet" type="text/css" href="/ServletTest/css/style.css">
</head>

<body>
<h2>問い合わせフォーム</h2>

	
	<form action="test" method = "POST">
	
		<div class = "a">*必須</div>
		氏名：　<input type= "text"  name="name"><hr>

		会社：　<input type= "text" size= "30" name= "company"><hr>
		
		<div class = "a">*必須</div>
		メールアドレス：　<input type= "text" size= "40" name= "address"><hr>
		
		<div class = "a">*必須</div>
		問い合わせ内容：<br>
		<textarea cols= "50" rows= "10" name= "memo"></textarea><hr>
		
		メルマガ登録：　
		<input type= "checkbox" name ="mail" value="総合案内">総合案内
		<input type= "checkbox" name ="mail" value="セミナー案内">セミナー案内
		<input type= "checkbox" name ="mail" value="求人採用情報">求人採用情報
		<hr>		
		
		資料請求希望：　
		<input type= "radio" name= "judge" value= "1" >Yes
		<input type= "radio" name= "judge" value= "2" >No
		
		<p>
		
		<input type= "submit" value="送信">
	
	</form>



</body>
</html>