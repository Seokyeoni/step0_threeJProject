<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tableList.jsp</title>
</head>
<body>
	<style>
table, th, td {
    border: 3px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
    text-align: left;    
}
</style>
</head>
<body>
<center>
<h1>개인 영수증 내역(Expense Statement)</h1>
<table style="width:70%">
<c:forEach items="${requestScope.receiptArray}" var="v">
  <tr>
    <th>아이디[ID]</th>
    <th>${v.personId}</th>
    <td>식비[foodExp]</td>
    <td>$100</td>
    <td>교통비[transExp]</td>
    <td>$50</td>
    <td>쇼핑비[shopExp]</td>
    <td>$100</td>
    <td>여가비[leisureExp]</td>
    <td>$50</td>
    <td>통신비[teleExp]</td>
    <td>$50</td>
    <th>총합[Total]</th>
    <th>$50</th>
  </tr>
  </c:forEach>
</table>

</center>


</body>
</html>