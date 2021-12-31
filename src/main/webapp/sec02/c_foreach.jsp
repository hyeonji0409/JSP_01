<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 정현지
  Date: 2021-12-31
  Time: 오후 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List dataList = new ArrayList();
    dataList.add("hello");
    dataList.add("world");
    dataList.add("안녕하세요");
%>
<html>
    <head>
        <title>c:forEach</title>
    </head>
    <body>
        <c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
            i = ${i} &nbsp; &nbsp; 반복횟수 : ${loop.count}
            &nbsp;&nbsp; 인덱스 : ${loop.index}
            &nbsp;&nbsp; 첫 번째 : ${loop.first}
            &nbsp;&nbsp; 마지막 : ${loop.last}<br>
        </c:forEach> <br>

        <c:set var="list" value="<%=dataList%>" />
        <c:forEach var="data" items="${list}">
            ${data}<br>
        </c:forEach> <br>

        <c:set var="fruits" value="사과, 수박, 바나나, 망고, 귤" />
        <c:forTokens var="token" items="${fruits}" delims=",">
            ${token} <br>
        </c:forTokens>
    </body>
</html>
