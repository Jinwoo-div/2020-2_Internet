<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
page autoFlush="false", buffer="1kb";
out.println("<h2>현재autoflush = " + out.isAutoFlush() + "</h2>");

for(int i = 1; i < 25; i++) {
	out.println("남은 출력 버퍼 크기(out.getRemaining()) : " + out.getRemaining() + "<br>");
	if (out.getRemaining() < 50) {
		out.println("<br>");
		out.flush();
	}
}
%>

<hr>
초기 출력버퍼크기 : <%=out.getBufferSize() %> byte<br>
남은 출력버퍼크기 : <%=out.getRemaining() %> byte
</body>
</html>