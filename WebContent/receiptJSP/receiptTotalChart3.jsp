<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
[
           ['', '${requestScope.receiptTotal[0].personId}', 'Total'],
            ['식비', ${requestScope.receiptTotal[0].foodExp}, ${requestScope.receiptTotal[1].foodExp}],
            ['교통비', ${requestScope.receiptTotal[0].transExp}, ${requestScope.receiptTotal[1].transExp}],
            ['쇼핑비', ${requestScope.receiptTotal[0].shopExp}, ${requestScope.receiptTotal[1].shopExp}],
            ['여가비', ${requestScope.receiptTotal[0].leisureExp}, ${requestScope.receiptTotal[1].leisureExp}],
            ['통신비', ${requestScope.receiptTotal[0].teleExp}, ${requestScope.receiptTotal[1].teleExp}]
]