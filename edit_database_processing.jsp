<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><!--
        -->        <table border="1">
            <tr>
                <td>Serial ID Number</td>
                <td>Name of the product</td>
                <td>Number</td>
                <td>Price</td>       
            </tr>
            <% //
                Context context = new InitialContext();
                DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
                DBase db = new DBase(dataSource);
                PrintWriter writer = new PrintWriter(out);
                ArrayList<DBase> record = db.retrivedata();
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
        <br>
        <br>
        <%
            String old = request.getParameter("oldid");
            if (old == null) {
        %>
        <table>
            <form methond="get">
                <tr>
                    <td>

                    </td>
                    <td>
                        <label for="oldid">Input ID number</label>
                        <input type="text" name="oldid" value=""><br>
                    </td>
                    <td>
                        <input type="submit" value="edit">
                        <%} if (old != null) {
                                int oldid1 = Integer.parseInt(old);
                                int oldid2 = Integer.parseInt(old);

                                request.setAttribute("isvalid", db.checkmatchwithID(oldid1));
                                RequestDispatcher rd = request.getRequestDispatcher("validinput.jsp");
                                session.setAttribute("oldid", db.checkmatchreturnID(oldid2));
                                RequestDispatcher rd1 = request.getRequestDispatcher("update_database.jsp");
                                rd.include(request, response);
                                rd1.include(request, response);
                            }
                        %>
                    </td>
                </tr>
            </form>
        </table
    </body>
</html>
