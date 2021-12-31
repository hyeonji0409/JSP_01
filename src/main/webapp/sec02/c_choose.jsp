<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- 변수 설정 --%>
<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1234" scope="page"/>
<c:set var="name" value="${'홍길동' }" scope="page"/>
<c:set var="age" value="${23 }" scope="page"/>
<c:set var="height" value="${170 }" scope="page"/>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
    <head>
        <title>c:choose 태그</title>
    </head>
    <body>
        <c:choose>
            <%-- name == null 로 표현해도 무관함--%>
            <c:when test="${empty name}">
                <tr align="center">
                    <td colspan="5">이름이 없습니다</td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr align="center">
                    <td>${id}</td>
                    <td>${pwd}</td>
                    <td>${name}</td>
                    <td>${age}</td>
                    <td>${height}</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </body>
</html>
