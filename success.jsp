<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Login JSP Result</title>            
</head>
<body>
<% 
    Boolean loggedin = (Boolean) request.getAttribute("isIn");
    if (loggedin==true) {
%>
        <h1>Login successful</h1>
<%
    }
    else {
%>
        <h1>Incorrect username or password</h1>
<%
   }    
%>
