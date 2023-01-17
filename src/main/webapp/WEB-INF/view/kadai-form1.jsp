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
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Kadai kadai1 = (Kadai)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h3>新規会員登録</h3>
		<form action="KadaiConfirmServlet1" method="post">
			名前：<input type="text" name="name" value="<%=kadai1.getName()%>"><br>
			年齢：<input type="text" name="age" value="<%=kadai1.getAge()%>"><br>
			性別：<input type="text" name="gender" value="<%=kadai1.getGender()%>"><br>
			電話番号：<input type="text" name="tel" value="<%=kadai1.getTel()%>"><br>
			メール：<input type="email" name="email" value="<%=kadai1.getMail()%>"><br>
			パスワード：<input type="password" name="pw"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h3>新規会員登録</h3>
	<form action="KadaiConfirmServlet1" method="post">
		名前：<input type="text" name="name"><br>
		年齢：<input type="text" name="age"><br>
		性別：<input type="text" name="gender"><br>
		電話番号：<input type="text" name="tel"><br>
		メール：<input type="email" name="email"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>