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
        
 
    </head>
    <body>
         
        </form>
    <center>
        
        
        
        
        
        
        
       <form >
            <table border="1">
                <tr>
                    <th>CID </th>
                    <th>CUSTOMER NAME </th>
                    <th>EMAIL </th>
                    <th>Car Name</th>
                    <th>Car Colour </th>
                    <th>Start Date </th>
                    <th>Return Date </th>
                    <th>Location </th>
                    <th>Booking Amount </th>
                    <th>Due </th>
                    <th>Payment Detail </th>
                    
                </tr>
                <c:forEach items="${list}" var="b">
                    <tr>
                        <td>${b.cid}</td>
                        <td>${b.cname}</td>
                        <td>${b.email}</td>
                        <td>${b.carname}</td>
                        <td>${b.carcolour}</td>
                        <td>${b.startdate}</td>
                        <td>${b.returndate}</td>
                        <td>${b.location}</td>
                        <td>${b.bookingamount}</td>
                        <td>${b.due}</td>
                        <td>${b.paymentdetail}</td>
                       
                        
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="adminpage.jsp">Back</a>
        
        
        
        
    </center>
    
   
    </body>
</html>
