
<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <title>input database</title>
    </head>
    <body>
        <form method="PST" action="processing.jsp">
            <label for="id">ID product</label>s
            <input type="text" name="id" value=""><br><br>
            <label for="name">name of product</label>
            <input type="text" name="name" value=""><br><br>
            <label for="number">number of product</label>
            <input type="text" name="number" value=""><br><br>
            <label for="price">price of this product</label>s
            <input type="text" name="price" value=""><br><br>

            <button type="insert">submit</input>
     
            <button type="reset" value="reset">reset</input>
           
        </form>
        
                    <form method="GET" action ="interface.jsp"
                          <p><button type="submit">quit</button></p>
                    </form>
                    </body>
                    </html>



