<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>問い合わせ完了</title>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8"); %>

	<h3>問い合わせを送信しました。</h3>


	名前：　
		<%=request.getParameter("name") %><hr>

	会社：　
		<%=request.getParameter("company") %><hr>

	メールアドレス：　
		<%=request.getParameter("address") %><hr>

	問い合わせ内容：<br>
		<%=request.getParameter("memo") %><hr>

	メルマガ登録：　
	<%
		String[] strAry = request.getParameterValues("mail");
			for (String str : strAry) {
		%>
		
	<%=str %>
	
	<% } %>
	
	<hr>
	
	資料請求希望：　
		<%
		String answer = request.getParameter("judge");
			if(Integer.parseInt(answer)==1){
				out.println("希望する");
				
		%>
			<br>		
			この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロードが可能です。
			<br>
			<a href= "contact.jsp">資料ダウンロード</a>
		<%	
		}else{
			out.println("希望しない");

		%>
		
	<% } %>
	
<br>


</body>
</html>