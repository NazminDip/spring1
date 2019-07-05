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
            h1{
                font-size: 30px;
                color:#f5204b;
            }
            
            td, th{
                
                font-size: 20px;
                color:black;
                background-color:#dbdbdb;
                
            }
        </style>
        
    </head>
    <body>
    <center>
        
        <h1><b>Messages Detail </b></h1>
    </head>
    <body>
    <center>
       <form >
            <table class="table table-striped">
                <tr>
                    <th>Cid </th>
                    <th>Customer Name </th>
                    
                    <th>EMAIL </th>
                    
                    <th>Password </th>
                    <th>Message </th>
                  
                    <th>Action</th>
                   
                </tr>
                <c:forEach items="${list}" var="k">
                    <tr>
                        <td>${k.cid}</td>
                        <td>${k.name}</td>
                        <td>${k.email}</td>
                        
                        <td>${k.password}</td>
                        <td>${k.message}</td>
                       
                        
                         <td><a href="puran.htm?cid=${k.cid}"><img src="img/Delete24.gif"  alt="/">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="adminpage.jsp">Back</a>
        
        
        
        
    </center>
    </body>
</html>
