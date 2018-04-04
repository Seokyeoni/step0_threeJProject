<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
<style>
table, th, td {
    border: 2px solid #90b9b6;
    border-collapse: collapse;
}
th, td, tr {
    padding: 5px;
    text-align: center;
}

</style>
</head>

<body>
<div></div>
<br><br><br><br>
<center>
<table style="width: 1000px">
<caption>
<font size="10px">All Receipt</font><br><br>
</caption>
<thead>
<tr>
<th>ID</th>
<th>식비</th>
<th>교통비</th>
<th>쇼핑비</th>
<th>여가비</th>
<th>통신비</th>
<th></th>
<th>합계</th>
				</tr>
</thead>

<c:if test="${requestScope.receiptArray.size() == 0 }">
<tfoot>
<tr>
<td colspan="3">현재 데이타가 없습니다.</td>
				</tr>
</tfoot>
</c:if>
<tbody>
<c:forEach var="v" items="${requestScope.receiptArray}" varStatus="status">
<tr>
<td><c:out value="${v.personId}"/></td>
<td><c:out value="${v.foodExp}"/></td>
<td><c:out value="${v.transExp}"/></td>
<td><c:out value="${v.shopExp}"/></td>
<td><c:out value="${v.leisureExp}"/></td>
<td><c:out value="${v.teleExp}"/></td>
<td></td>
<td><c:out value="${v.foodExp+v.transExp+v.shopExp+v.leisureExp+v.teleExp}"/></td>
                </tr>
</c:forEach>
</tbody>
</table>
</center>
</body>
</html>