<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <%
        String email = request.getParameter("email").trim().toLowerCase();
        String password = request.getParameter("password");
        out.println("账号："+email);
        out.println("密码："+password);
        String [] cities = request.getParameterValues("cities");
        String [] hobbies = request.getParameterValues("hobbies");

        new Driver();
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_javaee","root","system");
        String sql = "insert into db_javaee.users values(null,?,?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,email);
        preparedStatement.setString(2,password);
        preparedStatement.setString(3, Arrays.asList(cities).toString());
        preparedStatement.setString(4,Arrays.asList(hobbies).toString());

        preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();

//        request.getRequestDispatcher("index.jsp").forward(request,response);
        response.sendRedirect("index.jsp");
    %>
</body>
</html>
