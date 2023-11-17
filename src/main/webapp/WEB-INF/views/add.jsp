<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 11/17/2023
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>${name}</h1>

    <form action="/home/do-add" method="post" >
        <input type="number" name="id" value="${cus.id}">
        <br>
        <input type="text" name="name" ${cus.name}>
        <br>
        <input type="number" min="18" name="age" ${cus.age}>
        <br>
        <select name="sex" ${cus.sex}>
            <option value="true">Nam</option>
            <option value="false">Nữ</option>
        </select>
        <br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
