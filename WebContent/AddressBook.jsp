<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
int index = 0;
String[] names = new String[]{"山田太郎","鈴木一郎","佐藤花子","田中健二","近藤幸子"};
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>登録画面</title>
</head>
<body>
<center>
<form action="AddressBookResult.jsp" method="post">
<input name="count" type="hidden" value="<%= names.length %>">
<table border="1">
	<caption style="font-weight: bold;font-size: large;">登録画面</caption>
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
	<% for(int i=0; i<names.length; i++) { %>
		<tr>
			<th><%= names[i] %><input name="name<%= i %>" type="hidden" value="<%= names[i] %>"></th>
			<td>
				<select name="address<%= i %>" style="width: 100">
					<option value="東京都">東京都
					<option value="神奈川県">神奈川県
					<option value="埼玉県">埼玉県
					<option value="千葉県">千葉県
				</select>
			</td>
			<td>
				<input name="tel<%= i %>1" type="text" maxlength="4" size="5">-
				<input name="tel<%= i %>2" type="text" maxlength="4" size="10">-
				<input name="tel<%= i %>3" type="text" maxlength="4" size="10"></td>
			<td>
				男性<input name="gender<%= i %>" type="radio" value="男性" checked="checked">
				女性<input name="gender<%= i %>" type="radio" value="女性">
			</td>
			<td><textarea name="remarks<%= i %>">備考欄</textarea></td>
		</tr>
	<% } %>
	</tbody>
</table>
<br>
<input type="submit" value="登録">
<input type="reset" value="取消">
</form>
</center>
</body>
</html>