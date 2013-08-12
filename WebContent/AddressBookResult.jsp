<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
request.setCharacterEncoding("Windows-31J");
int count = Integer.parseInt(request.getParameter("count"));
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>登録完了画面</title>
</head>
<body>
<center>
<table border="1">
	<caption style="font-weight: bold;font-size: large;">登録完了画面</caption>
	<thead>
		<tr>
			<th><center>名前</center></th>
			<th><center>住所</center></th>
			<th><center>電話番号</center></th>
			<th><center>性別</center></th>
			<th><center>備考</center></th>
	</tr>
	</thead>
	<tfoot>
		<tr>
			<th><center>名前</center></th>
			<th><center>住所</center></th>
			<th><center>電話番号</center></th>
			<th><center>性別</center></th>
			<th><center>備考</center></th>
		</tr>
	</tfoot>
	<tbody>
	<% for(int i = 0;i < count; i++) { %>
		<tr>
			<th><%= request.getParameter("name" + i) %></th>
			<td><%= request.getParameter("address" + i) %></td>
			<td><%= request.getParameter("tel" + i + "1") + "-" + request.getParameter("tel" + i + "2") + "-" + request.getParameter("tel" + i + "3") %></td>
			<td><%= request.getParameter("gender" + i) %></td>
			<td><%= request.getParameter("remarks" + i) %></td>
		</tr>
	<% } %>
	</tbody>
</table>
</center>
</body>
</html>