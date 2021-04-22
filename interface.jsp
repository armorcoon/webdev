<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>interface page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Please select the choices </h1>
        <form method="GET" action="input_data.jsp">            
            <button type="submit">input database</button></p>  
        </form>
        <form method="GET" action='retrieve_data.jsp'>
             <button type="submit">display database</button></p>
        </form>
        <form method="GET" action='edit_database.jsp'>
             <button type="submit">edit database</button></p>
        </form>
        <form method="GET" action="interface_searching.jsp">
            <button type="submit">searching</button></p>
        </form>
        <form method="GET" action="displaying_admin.jsp">
            <button type="submit">display admin user</button></p>
        </form>
        <br><br>
        <form method="GET" action="logout.jsp">
            <button type="submit">logout</button></p>
        </form>
    </body>
    <div>OCDT Panupong Promnikorn z5233293</div>
    <div>MIDN Ahmad Bilal z5244097</div>
</html>


