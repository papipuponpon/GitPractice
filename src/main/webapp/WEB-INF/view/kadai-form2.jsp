<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Kadai" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>削除するアカウントのメールアドレスを入力してください</p>
	<form action="DeleteBookServlet" method="post">
	メールアドレス:<input type="text" name="mail"><br>
		<input type="submit" value="送信">
	<a href="./">戻る</a>
	</form>
</body>
</html>