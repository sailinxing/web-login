<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("name", "mxd");
	request.setAttribute("age",18);
	session.setAttribute("addr","hangzhou");
	application.setAttribute("sex","male");
	%>
	作者名字:${pageScope.name}
	作者年龄:${requestScope.age}
	作者地址:${sessionScope.addr}
	作者性别:${applicationScope.sex}<br/>
	作者名字:${name}
	作者年龄:${age}
	作者地址:${addr}
	作者性别:${sex}<br/>
	用户名：${param.username}<br/>
	密码：${param["password"]}<br/>
	爱好：${paramValues.hobby[0]}<br/>
	请求头：${header["User-Agent"]}<br/>
	cookie:${cookie.username.name}==${cookie.username.value }
	当前应用：${pageContext.request.contextPath}
</body>
</html>