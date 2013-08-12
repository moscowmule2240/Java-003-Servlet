<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%! int count = 0; %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>プッシュ</title>
</head>
<body>

<% count++; %>

<table border="1">
	<% for(int i = 0; i < count; i++) { %>
		<tr>
		<% for(int j = 0; j < count; j++) { %>
			<td>
			<%= count %>
			</td>
		<% } %>
		</tr>
	<% } %>
</table>

<form action="InfTable.jsp" method="post">
	<input type="submit" value="プッシュ">
</form>

</body>
</html>
