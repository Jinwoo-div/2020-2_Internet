<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JavaBean StudentBean을 이용한 예제</h2>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="student" class="javabean.StudentBean" scope="page"/>
<hr>
<h3>폼에서 전달받은 학생정보를 그대로 자바빈 studentBean에 저장</h3><p>
<jsp:setProperty name="student" property="*"/>
<hr>
<h3>JavaBean StudentBean에 저장된 정보를 조회 출력</h3><p>
학생 ID: <jsp:getProperty name="student" property="id"/><br>
학생 이름: <jsp:getProperty name="student" property="name"/><br>
학생 번호: <jsp:getProperty name="student" property="snum"/><br>
나이(생년): <%=student.getAge() %> (jsp:getProperty name="student" property="year"/>)<br>
암호: <jsp:getProperty name="student" property="pass"/><br>
전자메일: <jsp:getProperty name="student" property="pass"/><br>
</body>
</html>