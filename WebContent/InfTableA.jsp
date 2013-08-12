<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	int count;
	String countString = request.getParameter("count");
	if(countString == null){
		count = 1;
	}else{
		count = Integer.parseInt(countString);
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>遷移</title>
</head>
<body>

<form action="InfTableB.jsp" method="post">
	<input type="hidden" value="<%= count + 1 %>" name="count">
	<input type="submit" value="Ｂへ遷移">
</form>
<br>

<table border="1">
	<% for(int i=0; i< count; i++) { %>
		<tr>
		<td>
		<% out.println("A" + count); %>
		</td>
		</tr>
	<% } %>
</table>

</body>
</html>
