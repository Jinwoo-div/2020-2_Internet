<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function back() {
	location.href = "input.jsp";
}
</script>
</head>
<body>
<table border=1>
<thead>
<tr>
<th>이름<th>성별<th>취미<th>전화번호
</thead>
<tbody>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3307/userdb1?serverTimezone=UTC", "root", "1234");
Statement sta = conn.createStatement();
ResultSet lis = sta.executeQuery("SELECT * FROM users");
while(lis.next()) {
	out.print("<tr>");
	out.print("<td>" + lis.getString("name"));
	out.print("<td>" + lis.getString("sex"));
	out.print("<td>" + lis.getString("hobby"));
	out.print("<td>" + lis.getString("phone"));
}
sta.close();
%>

</tbody>
</table>
<input type="button" id="back" value="돌아가기" onclick=back()>
</body>
</html>