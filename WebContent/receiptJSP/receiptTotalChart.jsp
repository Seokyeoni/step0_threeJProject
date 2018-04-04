<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['ExpName', 'Exp'],
          ['식비',     ${requestScope.receiptTotal.foodExp}],
          ['교통비',    ${requestScope.receiptTotal.transExp}],
          ['쇼핑비',  ${requestScope.receiptTotal.shopExp}],
          ['여가비', ${requestScope.receiptTotal.leisureExp}],
          ['통신비',    ${requestScope.receiptTotal.teleExp}]
        ]);

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>
