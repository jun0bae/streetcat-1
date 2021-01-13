<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  %>
<!-- memberAll.jsp -->
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
<%@ include file="top.jsp"%>



<div align="center">

	<hr color="green" width="300">

	<c:if test = "${mode == 'all'}">
	<h2>ȸ �� �� �� �� ��</h2>
	</c:if>
	<c:if test ="${mode== 'find'}">
	<h2>ȸ �� ã ��</h2>
	<form name="f"  action="find.do" method="post">
	<input type="hidden" name="mode" value="find"/>
		<select name="search">
			<option value="id">���̵�</option>
			<option value="name">�̸�</option>
		</select>
		<input type="text" name="searchString" class="box">
		<input type="submit" value="ã��">
	</form>
	</c:if>

	<hr color="green" width="300">
	<table width="100%" class="outline">
		<tr>
			<th class="m3">��ȣ</th>
			<th class="m3">�̸�</th>
			<th class="m3">���̵�</th>
			<th class="m3">�̸���</th>
			<th class="m3">������</th>
			<th class="m3">����|����</th>
		</tr>
		 

<c:if test ="${empty listMember }" >
		<tr>
			<td colspan="7">��ϵ� ȸ���� �����ϴ�.</td>
		</tr>
		</c:if>
<c:forEach var="dto" items="${listMember}">
		<tr>
			<td>${dto.unum }</td>
			<td>${dto.name }</td>
			<td>${dto.id }</td>
			<td>${dto.email }</td>
			<td>${dto.joindate }</td>
			<td><a href="member_edit.do?unum=${dto.unum}">����</a> |
			<a href="member_delete.do?unum=${dto.unum}">����</a></td>
				
			</tr>	
		</c:forEach>
	</table>
</div>
<%@ include file="bottom.jsp"%>









