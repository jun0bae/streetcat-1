<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>����� �˻�</title>
</head>
<body>
	<div align="center">
		<h1>����� �˻�</h1>
		<br>
		<script type="text/javascript">  
			function openSearchCat(){  
			    window.open("searchCat.do", "����� ã�ƺ���", "width=800, height=500, resizable=no" );  
			}
		</script>
		<form name="f" action="cat_list.do" method="post">
			<select name="searchString">
				<option value="name">�̸��˻�</option>
				<option value="location">�����˻�</option>
				<option value="feature">Ư¡�˻�</option>
			</select>
				<input type="text" name="search">
				<input type="button" value="��ġ�� ã��" onclick="javascript:openSearchCat();">
				<input type="submit" value="�˻�">
		</form>
		<br>
		<h2>����� ���</h2>
		<table border="1" style="width:80%;">
			<tr>
				<td align="right" colspan="4"><a href="cat_insert.do">����� ����ϱ�</a></td>
			</tr>
			<tr>
				<th>�̸�</th>
				<th>Ư¡</th>
				<th>��ǥ����</th>
				<th>������ġ</th>
			</tr>
<c:if test="${empty catList}">		
			<tr>
				<td colspan="4">��ϵ� ����̰� �����ϴ�.</td>
			</tr>
</c:if>
<c:forEach var="dto" items="${catList}">
			<tr>
				<td>${dto.cname }</td>
				<td>${dto.feature }</td>
				<td>${dto.image }</td>
				<td>${dto.location }</td>
			</tr>
</c:forEach>
		</table>
	</div>
</body>
</html>