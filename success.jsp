<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Successful Login</title>            
    </head>
    <body>
        <%
            Boolean loggedin = (Boolean) request.getAttribute("isIn");
            if (loggedin == true) {
        %>
        <h1>Login successful</h1>       

        <h2>What would you like to </h2>
        <form method="GET" action="interface.jsp">
            <button type='submit'>commit</button></p>
    </form>
    <form method="GET" action='goodbye.html'>
        <button type='submit'>exit</button></p>
    <form>               
        <% } else if (loggedin == false) {
        %>
        <h2>incorrect username or password</h2>
        <% }%> 
        </body>
        </html>

