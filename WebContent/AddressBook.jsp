<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
int index = 0;
String[] names = new String[]{"�R�c���Y","��؈�Y","�����Ԏq","�c������","�ߓ��K�q"};
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>�o�^���</title>
</head>
<body>
<center>
<form action="AddressBookResult.jsp" method="post">
<input name="count" type="hidden" value="<%= names.length %>">
<table border="1">
	<caption style="font-weight: bold;font-size: large;">�o�^���</caption>
	<thead>
		<tr>
			<th><center>���O</center></th>
			<th><center>�Z��</center></th>
			<th><center>�d�b�ԍ�</center></th>
			<th><center>����</center></th>
			<th><center>���l</center></th>
	</tr>
	</thead>
	<tfoot>
		<tr>
			<th><center>���O</center></th>
			<th><center>�Z��</center></th>
			<th><center>�d�b�ԍ�</center></th>
			<th><center>����</center></th>
			<th><center>���l</center></th>
		</tr>
	</tfoot>
	<tbody>
	<% for(int i=0; i<names.length; i++) { %>
		<tr>
			<th><%= names[i] %><input name="name<%= i %>" type="hidden" value="<%= names[i] %>"></th>
			<td>
				<select name="address<%= i %>" style="width: 100">
					<option value="�����s">�����s
					<option value="�_�ސ쌧">�_�ސ쌧
					<option value="��ʌ�">��ʌ�
					<option value="��t��">��t��
				</select>
			</td>
			<td>
				<input name="tel<%= i %>1" type="text" maxlength="4" size="5">-
				<input name="tel<%= i %>2" type="text" maxlength="4" size="10">-
				<input name="tel<%= i %>3" type="text" maxlength="4" size="10"></td>
			<td>
				�j��<input name="gender<%= i %>" type="radio" value="�j��" checked="checked">
				����<input name="gender<%= i %>" type="radio" value="����">
			</td>
			<td><textarea name="remarks<%= i %>">���l��</textarea></td>
		</tr>
	<% } %>
	</tbody>
</table>
<br>
<input type="submit" value="�o�^">
<input type="reset" value="���">
</form>
</center>
</body>
</html>