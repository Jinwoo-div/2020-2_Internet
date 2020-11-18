<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3307/userdb1?serverTimezone=UTC", "root", "1234");
Statement sta = conn.createStatement();
String Name = (String)request.getParameter("name");
String Sex = (String)request.getParameter("sex");
String Hobby = (String)request.getParameter("hobby");
String Phone = (String)request.getParameter("phone");
String qur = "INSERT INTO users(name, sex, hobby, phone) VALUES ('" + Name + "', '" + Sex + "', '" + Hobby + "', '" + Phone + "')";
sta.executeUpdate(qur);


%>
<jsp:forward page="input.html" />
</body>
</html>