<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <input type="text" id="id" name ="id"><br>
            <label for="password">password</label>
            <input type="password" id="password" name ="password"><br>
            <br><input type="submit" value="submit">
            &emsp;<input type="reset" value="reset">
        </form>
    </body>
</html>

<%
    } else {
        Boolean loggedin;
        if (id.equals("2") && password.equals("toor")) {
            loggedin = true;
        } else {
            loggedin = false;
        }
        request.setAttribute("isIn", loggedin);
        RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
        rd.forward(request, response);

    }
%>
