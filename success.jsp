<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Login JSP Result</title>            
    </head>
    <body>
        <%
            Boolean loggedin = (Boolean) request.getAttribute("isIn");
            if (loggedin == true) {
        %>
        <h1>Login successful</h1>       

        <h2>What would you like to </h2>
        <form method="get">
            <input type="button" id="a1" value="commit"></input>
            <input type="button" id="a2" value="exit"></input>

        </form>
        <script type="text/javascript">
            document.getElementById("a1").onclick = function(){
                location.href = "http://localhost:8084/WebApplication4/interface.jsp";
            }
            document.getElementById("a2").onclick = function(){
                location.href = "http://localhost:8084/WebApplication4/goodbye.html";
            }
        </script>

        <% } else if (loggedin == false) {
        %>
        <h2>incorrect username and password</h2>
        <% }%> 
    </body>
</html>

