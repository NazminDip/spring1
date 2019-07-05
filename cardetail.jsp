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
        
        
        
        <title>JSP Page</title>
        <style>
            td, th, tr{
                font-size: 30px;
                color:black;
                background-color:#CCC;
            }
            h1{
                
                font-size: 30px;
                color:#aa0a5f;
            }
        </style>
        
    </head>
  
    <body>
    <center>
        <h1>Car Detail</h1>
       <form>
            <table border="1">
                <tr>
                    <!--<th>ID </th>!-->
                    <th>Car NAME </th>
                    <!--<th>Car Image</th>!-->
                    <th>Car Brand</th>
                   <!-- <th>Price </th>!-->
                    <th>Car Colour</th>
                    <th>Status</th>
                    <th>Fare </th>
                  
                   
                </tr>
                <c:forEach items="${list}" var="c">
                    <tr>
                      <!--  <td>${c.id}</td>!-->
                        <td>${c.carname}</td>
                       <!-- <td>${c.img}</td>!-->
                        <td>${c.carbrand}</td>
                       <!-- <td>${c.price}</td>-->
                        <td>${c.carcolour}</td>
                        <td>${c.status}</td>
                        <td>${c.fare}</td>
                        
                      
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="index.jsp">Back</a>
        
        
        
        
    </center>
    </body>
</html>
