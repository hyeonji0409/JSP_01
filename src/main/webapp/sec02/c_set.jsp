<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 변수 설정 --%>
<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1234" scope="page"/>
<c:set var="name" value="${'홍길동'}" scope="page"/>
<c:set var="age" value="${23}" scope="page"/>

<%-- value 값으로 EL 사용 가능 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        ${id } <br>
        ${pwd } <br>
        ${name } <br>
        ${age } <br>

        <a href="${contextPath}/login.jsp">로그인</a>
    </body>
</html>
