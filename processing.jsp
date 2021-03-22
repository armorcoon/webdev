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
        <h1>updated!</h1>
        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String number = request.getParameter("number");
            String price = request.getParameter("price");

            int id1 = Integer.parseInt(id);
            int number1 = Integer.parseInt(number);
            Double price1 = Double.parseDouble(price);

            Context context = new InitialContext();
            DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
            DBase db = new DBase(dataSource);
            db.setdatabase(id1, name, number1, price1);

        %>
    </body>
</html>



