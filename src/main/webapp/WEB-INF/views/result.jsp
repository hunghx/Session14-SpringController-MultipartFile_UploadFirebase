<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 11/17/2023
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${images}" var="imgUrl">
    <li>
        <img width="300" src="${imgUrl}" alt="#">
        <a href="${imgUrl}" target="_blank">download</a>
    </li>>
</c:forEach>
</body>
</html>
