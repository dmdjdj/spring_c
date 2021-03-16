<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>��ǰ ���</h2>
<form action="listGoods.do" method="post">
��ǰ��:<input type="search" name="keyword">
<input type="submit" value="�˻�">
</form>
<table border="1" width="80%">
	<thead>
		<tr>
			<th><a href="listGoods.do?orderFeild=no">��ǰ��ȣ</a></th>
			<th><a href="listGoods.do?orderFeild=name">��ǰ�̸�</a></th>
			<th><a href="listGoods.do?orderFeild=qty">����</a></th>
			<th><a href="listGoods.do?orderFeild=price">����</a></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="g" items="${list }">
			<tr>
				<td>${g.no }</td>
				<td>${g.name }</td>
				<td>${g.qty }</td>
				<td>${g.price }</td>
			</tr>
		
		</c:forEach>
	</tbody>
</table>

</body>
</html>