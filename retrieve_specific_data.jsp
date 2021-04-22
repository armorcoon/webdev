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
        <title>retrieve database</title>
    </head>
    <body>
        <h1>The Information is</h1>
        <table border="1">
            <tr>
                <td>Serial ID Number</td>
                <td>Name of the product</td>
                <td>Number</td>
                <td>Price</td>       
            </tr>
            <%               String id = request.getParameter("id");
                int id1 = Integer.parseInt(id);
                Context context = new InitialContext();
                DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
                DBase db = new DBase(dataSource);
                PrintWriter writer = new PrintWriter(out);
                ArrayList<DBase> record = db.retrivespecificdata(id1);
                for (int i = 0; i < record.size(); i++) {
                    writer.printf("<tr>");
                    writer.printf("<td>");
                    writer.printf(record.get(i).getID());
                    writer.printf("</td>");
                    writer.printf("<td>");
                    writer.printf(record.get(i).getNAME());
                    writer.printf("</td>");
                    writer.printf("<td>");
                    writer.printf(record.get(i).getNUMBER());
                    writer.printf("</td>");
                    writer.printf("<td>");
                    writer.printf(record.get(i).getPRICE());
                    writer.printf("</td>");
                    writer.printf("</tr>");
                }
            %>
        </table>
    </body>
    <form method="GET" action="interface.jsp">
        <p>Back to home page</p>
        <button type="submit">Home Page</button> 
    </form>
</html>


