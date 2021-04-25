<!DOCTYPE html>
<%@page import="product.Shoes"%>
<%@page import="java.util.ArrayList"%>
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
        <title>View Leaky Basket</title>
    </head>
    <body>                                                                                                  
            <table border="1">
                <tr>
                    <td><b>index</b></td>
                    <td><b>product</b></td>
                    <td><b>Quantity</b></td>
                    <td><b>Size</b></td>
                    <td><b>Price</b></td>
                    <td><b>Status</b></td>
                </tr>
                <% 
                    ArrayList<Shoes> basket = (ArrayList) session.getAttribute("basket");
                    for (Shoes item:basket) {
                %>
                <tr>
                    <td><%=basket.indexOf(item)+1%></td>
                    <td><%=item.brand%></td>
                    <td><%=item.qty%></td>
                    <td><%=item.size%></td> 
                    <td><%=item.price%></td> 
                    <td>
                        <form>
                            <button type="submit">remove</button>
                            <%
                            basket.remove(basket.indexOf(item)); 
                            %>
                        </form>
                    </td>
                <%
                    }
                %>
                </tr> 
            </table>
            <br><br>
        <form action="shoes.jsp" method="get">
            <button type="submit">Continue Shopping</button>
        </form>
        <form action="checkout.jsp">
            <button type="submit">Check out</button> 
        </form>
    </body>
</html>

