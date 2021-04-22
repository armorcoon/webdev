<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Displaying ADMIN users</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>Username</td>
                <td>Password</td>
            </tr>
            <%
                Context context = new InitialContext();
                DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
                DBase db = new DBase(dataSource);
                PrintWriter writer = new PrintWriter(out);
                ArrayList<DBase> admin = db.retriveadmin();
                for (int i = 0; i < admin.size(); i++) {
                    writer.printf("<tr>");
                    writer.printf("<td>");
                    writer.printf(admin.get(i).getUser());
                    writer.printf("</td>");
                    writer.printf("<td>");
                    writer.printf(admin.get(i).getPassword());
                    writer.printf("</td>");
                }
            %>
        </table>
        <br>
        <br>
        <form method="GET" action='interface.jsp'>
            <button type="submit">Home page</button></p>
</body>
</html>
