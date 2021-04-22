<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Valid Input</title>            
    </head>
    <body>
        <%
            Boolean validinput = (Boolean) request.getAttribute("isvalid");
            if (validinput == true) {
        %>
        <h1>Valid Input Serial ID Product</h1>
        <h2>Displaying database</h2>
        <table border="1">
            <tr>
                <td>Serial ID Number</td>
                <td>Name of the product</td>
                <td>Number</td>
                <td>Price</td>       
            </tr>
            <%
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
        </table><br><br> 
        <%
            int old = (Integer) session.getAttribute("oldid");
            PrintWriter write = new PrintWriter(out);
            write.print("<h>Selected Serial Product Number : " + old + "</h>");
        %>
        <h3>Please input new following information to edit database</h3>
        <table>
            <form method="GET" action="update_database.jsp">
                <tr>
                    <td>
                        <label for="id">ID product</label>s
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="id" value=""><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">name of product</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="name" value=""><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="number">number of product</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="number" value=""><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="price">price of this product</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="price" value=""><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button type="insert">submit</button>
                    </td>
                </tr>
            </form>
        </table>
          <% } else if (validinput == false) {
        %>
        <jsp:forward page="incorrect_searching.html" />      
        <% }%> 
    </body>       
</html>





