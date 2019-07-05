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
            
            update{
                
                background-color:#00ad5f;
            }
            Delete{
                
                background-color:#f5204b;
                
                
            }
        </style>
        
    </head>
    <body>
    <center>
        
       
    </head>
    <body>
        <h1 style="font-size: 30px ,color:brown"><b> User Detail </b></h1>
    <center>
       <form >
            <table border="1">
                <tr>
                    <th>ID </th>
                    <th>NAME </th>
                    <th>EMAIL </th>
                    <th>PASSWORD </th>
                    <th>Gender </th>
                    <th>Action </th>
                    <th>Action </th>
                    
                </tr>
                <c:forEach items="${list}" var="a">
                    <tr>
                        <td>${a.id}</td>
                        <td>${a.name}</td>
                        <td>${a.email}</td>
                        <td>${a.password}</td>
                        <td>${a.gender}</td>
                           
                    <td><a href="develop.htm?id=${a.id}&pname=${a.name} &email=${a.email}& password=${a.password} & gender=${a.gender}"><img src="img/Edit24.gif" alt="/">Update</a></td>
                         <td><a href="del.htm?id=${a.id}"><img src="img/Delete24.gif"  alt="/">Delete</a></td>
                    </tr>
                    
                    </tr>
                </c:forEach>
            </table>
        </form>
        
        <a href="adminpage.jsp">Back</a>
        
    </center>
    </body>
</html>
