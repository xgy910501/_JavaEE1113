<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h1>Welcome</h1>
    <%=(session.getAttribute("email") != null)? session.getAttribute("email") :""%>
    <hr>
    <a href="logout.jsp">LogOut</a>
</body>
</html>
