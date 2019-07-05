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
            body{
                
                background-color:#dbdbdb;
            }
        </style>
        
    </head>
    <body>
    <center>
        
        <h1><b> Bkash Payment Detail </b></h1>
    </head>
    <body>
    <center>
        <form>
      
            <table border="1">
                <tr>
                    <th>Cid</th>
                    <th>Mobile NO </th>
                    <th>Amount</th>
               
                  
                    
                </tr>
                <c:forEach items="${list}" var="z">
                    <tr>
                        <td>${z.cid}</td>
                        <td>${z.mobileno}</td>
                        <td>${z.amount}</td>
                       
                       
                        
                    </tr>
                 </c:forEach>
            </table>
                       
        </form>
  
        <a href="adminpage.jsp">Back</a>
        
        
        
        
    </center>
    </body>
</html>
