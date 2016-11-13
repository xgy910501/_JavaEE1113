<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="login.jsp" method="post">
  <input type="text" name="email" placeholder="EMAIL" value="test@test.com"><br>
  <input type="password" name="password" placeholder="PASSWORD" value="123456"><br>
  <input type="submit" value="Login">
  </form>
  <hr>
  <a href="signup.jsp">SIGN UP</a><br>
  <%=(request.getAttribute("message") != null) ? request.getAttribute("message") : ""%>
  </body>
</html>
