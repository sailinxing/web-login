<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/loginServlet" method="post"><br/>
	用户名：<input type="text" name="username"/><br/>
	密码：<input type="text" name="age"/><br/>
	爱好<input type="checkbox" name="hobby" value="film"/>电影<br/>
	<input type="checkbox" name="hobby" value="jogging"/>慢跑<br/>
	<input type="submit" value="登录"/>
	</form>
</body>
</html>