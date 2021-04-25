<%-- 
    Document   : register
    Created on : Apr 22, 2021, 4:45:45 PM
    Author     : Welcome
--%>
<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Register</h1>
                <form method ="POST">
                <label for='id'>username</label>
                <input type="text" name ="id"><br><br>
                <label for="password">password</label>
                <input type="password" name ="password"><br><br>
                <label for="firstname">fist name</label>
                <input type="text" name ="firstname"><br><br>
                <label for="lastname">last name</label>
                <input type="text" name="lastname"><br><br>
                <label for="phone">phone num</label>
                <input type='text'name='phone'><br><br>
                <br>&nbsp;<button type="insert">submit</button> 
                    <button type="reset" value="reset">reset</input>  
            </form>
            <form method ="GET" action="login.jsp">
                <button type="submit">Login Page</button>
            </form>
    </body>
    <%
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone = request.getParameter("phone");

        Context context = new InitialContext();
        DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
        DBase db = new DBase(dataSource);
        db.registerAccount(id, password);
        db.register(id, firstname, lastname, phone);

    %>
</html>