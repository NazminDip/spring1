<%-- 
    Document   : show
    Created on : May 12, 2019, 9:52:55 AM
    Author     : USER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
       <form action="updateuser.htm">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text"   name="id" value="${user.id}"/></td>
                </tr>
                <tr>
                    <td>NAME</td>
                    <td><input type="text"  name="name" value="${user.name}"/></td>
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td><input type="text"  name="email" value="${user.email}"/></td>
                 <tr>
                    <td>Password</td>
                    <td><input type="password"  name="password" value="${user.password}"/></td>
                </tr>
                 <tr>
                    <td>Gender</td>
                    <td><input type="text"  name="gender" value="${user.gender}"/></td>
                </tr>
                <tr>
                    <td> <input type="submit" value="Update"/></td>
                    
            </tr>
            </table>
       </form>
    </center>
    </body>
</html>
