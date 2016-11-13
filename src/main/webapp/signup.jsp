<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
    <h1>Login</h1>
    <form action="success.jsp" method="post">
        <input type="text" name = "email" placeholder="EMAIL" value="test@test.com"><br>
        <input type="password" name="password" placeholder="PASSWORD" value="123456"><br>
        <select name="cities" multiple="multiple">
            <option value="BeiJing" selected="selected">BeiJing</option>
            <option value="ShangHai" selected="selected">ShangHai</option>
            <option value="GuangZhou">GuangZhou</option>
        </select>
        <input type="checkbox" name="hobbies" value="TV" checked="checked">TV
        <input type="checkbox" name="hobbies" value="Game">Game
        <input type="checkbox" name="hobbies" value="Play" checked="checked">Play
        <input type="submit" value="Sign Up">
    </form>
</body>
</html>
