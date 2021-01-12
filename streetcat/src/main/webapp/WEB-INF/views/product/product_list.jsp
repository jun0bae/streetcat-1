<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- proudct_list.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>��ǰ��õ �Խ���</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div align="center">
	<b>�� �� ��</b>
	<table border="0" width="80%">
		<tr bgcolor="yellow">
			<td align="right"><a href="product_write.do">�۾���</a></td>
		</tr>
	</table>
	<table border="1" width="40%">
		<tr bgcolor="green">
			<th width="5%">��ȣ</th>
			<th width="20%">��ǰ</th>
			<th width="5%">����</th>
			<th width="5%">���ƿ�</th>
		
			
			
		</tr>
<c:if test="${empty listProduct}">		
		<tr>
			<td colspan="6">��ϵ� �Խñ��� �����ϴ�.</td>
		</tr>
</c:if>		
<c:forEach var="dto" items="${listProduct}">
		<tr>
			<td align="center"><c:out value="${startNum}" /></td>
			<c:set var="startNum" value="${startNum-1}"/>
		
		
			<td align="center"><a href="product_content.do?pnum=${dto.pnum}">
			<img src="${uploadPath}/${dto.image1}" width="150" height="150">
			
			<br>	<b>	${dto.pname}</b>
				</a>	
				
				</td>
			
			</td>
			<td align="center">
			<c:if test= "${dto.type eq 'snack'}" >
			����
			</c:if>
			<c:if test= "${dto.type eq 'toy'}" >
			�峭��
			</c:if>
			<c:if test= "${dto.type eq 'feed'}" >
			���
			</c:if>
			<c:if test= "${dto.type eq 'sand'}" >
			��
			</c:if>
		
			</td>
			<td align="center">${dto.plike}</td>
			
			
		</tr>
	
</c:forEach>
	</table>
	<br>
<c:if test="${count>0}">
	<c:if test="${startPage > pageBlock}">	
		[<a href="product_list.do?pageNum=${startPage-pageBlock}">����</a>]
	</c:if>
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
			[<a href="product_list.do?pageNum=${i}">${i}</a>]
		</c:forEach>
	<c:if test="${endPage < pageCount}">
		[<a href="product_list.do?pageNum=${endPage+pageBlock}">����</a>]
	</c:if>
</c:if>
</div>
</body>
</html>