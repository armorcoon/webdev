<%@page import="product.Shoes"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DBase.DBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@page import="product.Shoes"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controller.MainServlet"%>

<html>
    <head>
        <title>Check-Out Mini Basket</title>
    </head>
    <body>
        <p>The following items have been sent to your address:</p>
        <table border="1">
            <tr>
                <td><b>Product</b></td>
                <td><b>Size</b></td>
                <td><b>Quantity</b></td>
                <td><b>Price</b></td>
            </tr>
            <%
                ArrayList<Shoes> basket = (ArrayList) session.getAttribute("basket");
                Integer total = 0;
                Double total_cost = 0.00;
                for (Shoes product : basket) {
            %>
            <tr>
                <td><%=product.brand%></td>
                <td><%=product.size%></td>
                <td><%=product.qty%></td>
                <td>A$<%=product.price%></td>
            </tr>

            <%
                    total += Integer.parseInt(product.qty);
                    total_cost += Double.parseDouble(product.price) * (Integer.parseInt(product.qty));
                }
            %>
            <tr>
                <td><p>Total Amount</p></td>
                <td></td>
                <td><p><%=total%></p></td>
                <td><p>A$<%=total_cost%></p></td>
            </tr>
        </table>        
    </body>
</html>







