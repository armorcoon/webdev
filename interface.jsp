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
        <form>
            <br>
            <input type="button" id = "a1" value='input database'>
            <p>
                <input type="button" id = "a2" value='display database'>
            <p>
                <input type="button"  id = "a3" value='edit database'>
            <p>
                <input type="button"  id = "a4" value='searching'>
            <p>

        </form>
         <script type="text/javascript">
            document.getElementById("a1").onclick = function(){
                location.href = "http://localhost:8084/WebApplication4/input_data.jsp";
            }
        </script>
    </body>

</html>


