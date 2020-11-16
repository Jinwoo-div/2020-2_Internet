<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello World!!<br>
<%

request.setCharacterEncoding("UTF-8");
out.println("Your IP add is " + request.getRemoteAddr());
%>
<form action="show11-2.jsp" method="post">
please input your name :
<input type="text" name="thename">
<input type="submit" value="submit">
</form>
</body>
</html>