<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>data</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String tel = request.getParameter("tel");
String sex = request.getParameter("sex");
String country = request.getParameter("country");
String[] hobby = request.getParameterValues("hobby");


if (sex.equals("man")) {
	sex = "남자";
}
else {
	sex = "여자";
}

out.println("성명 : " + name + "<br>");
out.println("전화번호 : " + tel + "<br>");
out.println("성별 : " + sex + "<br>");
out.println("국적 : " + country + "<br>");
out.println("취미 : ");
for (String h:hobby) {
	out.println(h + " ");
}


%>
</body>
</html>