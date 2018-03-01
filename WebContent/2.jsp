<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.lixinxin.domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		
		
		pageContext.setAttribute("str", "abccc");
		request.setAttribute("user", new User("tom",18));
		request.setAttribute("list1", list1);
		request.setAttribute("list2", list2);
		request.setAttribute("map1", map1);
		request.setAttribute("map2", map2);
		%>
		1）EL获得普通字符串<br/>
		${str }<br/>
		2）EL获得User对象的值<br/>
		${user.username }==${user.age }<br/>
		3）EL获得List集合中第二个参数的值<br/>
			${list1[2]}<br/>
		4）EL获得List第二个user对象的age的值<br/>
		${list2[1].username }==${list2[1].age }<br/>
		5）EL获得Map的值<br/>
		${map1.name }<br/>
	
		6）EL获得Map的值<br/>
		${map2.guest.username }==${map2.guest.age }<br/>
		<br/>
</body>
</html>