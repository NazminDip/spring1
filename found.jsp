<%-- 
    Document   : form
    Created on : May 12, 2019, 9:42:59 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="look.htm">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="name" value="${book.name}"/></td>
                </tr>
               
                <tr>
                    <td> <input type="submit" value="Search"/></td>

                </tr>
            </table>
        </form>

    </body>
</html>
