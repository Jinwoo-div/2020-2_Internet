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
request.setCharacterEncoding("UTF-8");

String num = request.getParameter("num");
String[] major = request.getParameterValues("major");

out.println("<h2>학생 정보 입력 결과</h2>");

out.println("학번 : " + num + "<br>");
out.println("전공 : ");
if (major == null) {
	out.println("전공없음");
}
else {
	for (String m:major) {
		out.println(m + " ");
	}
}

out.println("<br><h2>요청 정보</h2>");
out.println("요청 방식 : " + request.getMethod() + "<br>");
out.println("요청 URL : " + request.getRequestURL() + "<br>");
out.println("요청 URI : " + request.getRequestURI() + "<br>");
out.println("클라이언트 주소 : " + request.getRemoteAddr() + "<br>");
out.println("클라이언트 호스트 : " + request.getRemoteHost() + "<br>");
out.println("프로토콜 방식 : " + request.getProtocol() + "<br>");
out.println("서버 이름 : " + request.getServerName() + "<br>");
out.println("서버 포트 번호 : " + request.getServerPort() + "<br>");

%>
</body>
</html>