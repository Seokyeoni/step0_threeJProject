<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>receiptView.jsp</title>

</head>
<body>

<style>

table {
    width: 100%;
    border-top: 3px solid #444444;
    border-collapse: collapse;
    
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    borer-top-style: double;
   text-align: center;    
    
  }
  
  td{
  border-bottom: 1px solid #444444;
    padding: 10px;
    bodrer-style:dashed;
    border-bottom-style: dashed;
    text-align: center;    
  }
  
  th{
    border-bottom: 3px solid #444444;
    padding: 10px;
    bodrer-style:double;
    border-bottom-style: double;
    borer-top-style: double;
    text-align: center;    
  }

</style>
</head>
<body>
<center>
<img src="images/great.jpg">
<h1>개인 영수증 내역(Expense Statement)</h1>
</center>
<table style="width:500px;margin-left: auto;margin-right: auto;">

  <tr>
    <th>아이디[ID]</th>
    <th>${requestScope.receipt.personId}</th>
    </tr>
     <tr>
    <td>식비[FoodExpensive]</td>
    <td>${requestScope.receipt.foodExp}</td>
    </tr>
     <tr>
    <td>교통비[TransExpensive]</td>
    <td>${requestScope.receipt.transExp}</td>
    </tr>
     <tr>
    <td>쇼핑비[ShopExpensive]</td>
    <td>${requestScope.receipt.shopExp}</td>
    </tr>
     <tr>
    <td>여가비[LeisureExpensive]</td>
    <td>${requestScope.receipt.leisureExp}</td>
    </tr>
     <tr>
    <td>통신비[TeleExpensive]</td>
    <td>${requestScope.receipt.teleExp}</td>
    </tr>
     <tr>
    <th>총합[Total]</th>
    <th>${requestScope.totalMoney}</th>
  </tr>
</table>


</body>
</html>