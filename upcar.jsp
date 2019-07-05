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
          <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <style>
         table, td, input{
                font-size: 20px;
                color:#002752;
                background-color:#CCC;
                width: 500px;
            }
            update{
               width:300px;
                
            }
            
        </style>
    </head>
    <body>
    <center>
       <form action="upcar.htm">
            <table border="1">
                <tr>
                    <td>ID</td>
                    <td><input type="text"   name="id" value="${car.id}"/></td>
                </tr>
                <tr>
                    <td> Car Name</td>
                    <td><input type="text"   name="carname" value="${car.carname}"/></td>
                </tr>
                 <tr>
                    <td> Car Image</td>
                    <td><input type="file"   name="img" value="${car.img}"/></td>
                </tr>
                <tr>
                    <td>Car Brand</td>
                    <td><input type="text" name="carbrand"  value="${car.carbrand}"/></td>
                 <tr>
                    <td>Price</td>
                    <td><input type="text"  name="price" value="${car.price}"/></td>
                </tr>
                <tr>
                    <td>Car Colour</td>
                    <td><input type="text"  name="carcolour" value="${car.carcolour}"/></td>
                </tr>
                
                
                  <tr>
                    <td>Status</td>
                    <td><input type="text"  name="status"      value="${car.status}"/></td>
                </tr>
                  <tr>
                    <td>Fare</td>
                    <td><input type="text"  name="fare" value="${car.fare}"/></td>
                </tr>
                 
               
                    <td> <input type="submit" value="Update"/></td>
                    
            </tr>
            </table>
       </form>
                <a href="carform.jsp">Back</a>
                
    </center>
    </body>
</html>
