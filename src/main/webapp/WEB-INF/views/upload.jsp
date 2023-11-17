<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 11/17/2023
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/home/upload" method="post" enctype="multipart/form-data">
  <input type="file" name="image" multiple>
  <button type="submit">Upload</button>
</form>
</body>
</html>
