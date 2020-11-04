<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<thead>
<tr>
<%
for (int i = 1; i < 10; i++) {
	out.println("<th>"+i+"단");
	}
%>
</thead>
<tbody>
<%
for (int i = 1; i < 10; i++) {
	out.println("<tr>");
	for (int f = 1; f < 10; f++) {
		int tmp = i*f;
		out.println("<td>"+ f + "*" + i + "=" + tmp);
		}
	}
%>
</tbody>
</table>
</body>
</html>