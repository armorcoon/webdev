<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    if (id == null || password == null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form method ="get">

            <label for="id">id number</label>
            <input type="text" name ="id"><br>
            <label for="password">password</label>
            <input type="password" name ="password"><br>
            <br><input type="submit" value="submit">
            &emsp;<input type="reset" value="reset">
        </form>
    </body>
</html>

<%
    } else {
        Context context = new InitialContext();
        DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
        DBase db = new DBase(dataSource);
        request.setAttribute("isIn", db.authenticate(id, password));
        RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
        rd.forward(request, response);

    }
%>
