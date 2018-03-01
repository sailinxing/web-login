<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lixinxin.domain.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/* request.setAttribute("user", new User("abba",20)); */
%>
<%
		List<User> list = new ArrayList<User>();
		list.add(new User("tom",29));
		list.add(new User("jerry",19));
		list.add(new User("jack",20));
		list.add(new User("rose",29));
		request.setAttribute("list", list);
	%>
<c:if test="${empty user}">
没有用户
</c:if>
<c:if test="${!empty user}">
欢迎你！${user.username}
</c:if>
<c:forEach begin="0" end="10" var="i">
${i }
</c:forEach>
<br/>
<c:forEach items="${list}" var="user" varStatus="vs">
${vs.count }:${user.username }==${user.age }<br/>
</c:forEach>
<%
	List<String> list1 = new ArrayList<String>();
	list1.add("a");
	list1.add("b");
	list1.add("c");
	List<User> list2 = new ArrayList<User>();
	list2.add(new User("jerry",23));
	list2.add(new User("rose",18));

	Map<String,String> map1 = new HashMap<String,String>();
	map1.put("name","jack");
	map1.put("addr","usa");
	
	Map<String,User> map2 = new HashMap<String,User>();
	map2.put("admin", new User("mxd",20));
	map2.put("guest",new User("hjf",28));
	Map<String,User> map3 = new HashMap<String,User>();
	map3.put("admin", new User("xxx",19));
	map3.put("guest",new User("ddd",25));
	Map<String,User> map4= new HashMap<String,User>();
	map4.put("admin", new User("bbb",18));
	map4.put("guest",new User("zzz",21));
	User user1=new User("xxl",19);
	User user2=new User("abc",18);
	User user3=new User("cbg",20);
	/* Map<User,Map<String,User>> map5=new Map<User,Map<String,User>>();
	map5.put(user1, map2);
	map5.put(user2, map3);
	map5.put(user3, map4); */
	
	request.setAttribute("user", user1);
	request.setAttribute("list1", list1);
	request.setAttribute("list2", list2);
	request.setAttribute("map1", map1);
	request.setAttribute("map2", map2);
	%>
	<!-- 1）遍历List<String>的值 -->
	<c:forEach items="${list1}" var="str">
	${str }
	</c:forEach><br/>
	<%-- 2）遍历List<User>的值 --%>
	<c:forEach items="${list2 }" var="user">
	${user.username }:${user.age }
	</c:forEach><br/>
	<%-- 3）遍历Map<String,String>的值 --%>
	<c:forEach items="${map1}" var="entry">
	${entry.key }==${entry.value }
	</c:forEach><br/>
	<%-- 4）遍历Map<String,User>的值 --%>
	<c:forEach items="${map2 }" var="entry"> 
	${entry.key }:${entry.value.username }==${entry.value.age }
	</c:forEach><br/>
	<!-- 5）遍历Map<User,Map<String,User>>的值 -->
	<c:forEach items="${map5}"  var="entry">
	${entry.key.username}:${entry.key.age}
		<c:forEach items="entry.value" var="innerentry">
		${entry.key }:${entry.value.username }==${entry.value.age }
		</c:forEach>
	</c:forEach>
</body>
</html>