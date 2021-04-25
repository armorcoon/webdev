<%-- 
    Document   : specific_order_view_3
    Created on : Apr 25, 2021, 2:35:55 PM
    Author     : Welcome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Ordering : adidas Stan Smith - Men Shoes</h2>
        <form action ="specific_order_view">
            <input type="hidden" name="prod" value="adidas Stan Smith - Men Shoes">
            <input type="hidden" name="price" value="140.00">
            <br>
            <table>
                <td>
                    <label for="qty">quantity:</label>
                    <select id = 'qty' name="qty">
                        <option value="select">select</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option> 
                    </select>
                </td>
                <td>
                    <label for="size">size:</label>
                    <select id = 'size' name="size">
                        <option value="select">select</option>
                        <option value="7US">7US</option>
                        <option value="8US">8US</option>
                        <option value="9US">9US</option>
                        <option value="10US">10US</option>
                        <option value="10.5US">10.5US</option> 
                    </select>
                </td>
            </table>
            <button type="submit">ADD TO CART</button>
        </form>
        <form action="shoes">
            <button type="submit">BACK TO SHOP</button>
        </form>
        <form action="view">
            <button type="submit">VIEW CART</button>
        </form>
    </body>
</html>
