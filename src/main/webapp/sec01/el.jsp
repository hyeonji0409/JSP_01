<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>EL 예제</title>
        <meta charset="utf-8">
    </head>
    <body>
        \${100} : ${100} <br>
        ${3.14}<br>
        ${"홍길동"} <br>
        ${true} <br>
        ${true&&true}<br>
        ${10+1}<br>
        ${100 mod 9}
        <%-- 문자열 연산 안됨 (오류)   --%>
        <%--    ${"hello" + "world"}--%>
    </body>
</html>
