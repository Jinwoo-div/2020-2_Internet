<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>if/else 예제</title>
</head>
<body>
<%! int day = 3; %>
<% if (day == 1 | day == 7) { %>
	<p>오늘은 주말입니다.</p>
<% } else { %>
	<p>오늘은 주말이 아닙니다.</p>
	<% } %>
</body>
</html>