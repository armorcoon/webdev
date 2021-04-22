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
        <table>
            <form method ="POST" action="processing.jsp">
                <tr>
                    <td>
                        <label for="id">ID product</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name ="id"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">name of product</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name ="name"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="number">number of product</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name ="number"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="price">price of this product</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name ="price"><br>
                    </td>
                </tr>
                <tr>
                    <td><br></td>
                </tr>
                <tr>
                    <td>
                        <button type="insert">submit</button>  
                    </td>

                </tr>
            </form>
        </table>
        <br>
        <table>
            <tr>
                <td>
                    <button type="reset" value="reset">reset</input>  
                </td>
                <td>
                    <form method="GET" action ="interface.jsp">
                        <button type="submit">Home Page</button>
                    </form>  
                </td>
            </tr>
        </table>
    </body>
</html>



