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
        
        <h1><b> Booking Detail </b></h1>
    </head>
    <body>
       
    <center>
        <form action="lookbook2.htm">
            <table>
                <tr>
                    <tr>
                    <td>Customer Name:</td>
                    <td><input type="text" name="cname" value="${book.cname}"/></td>
                </tr>
               
                <tr>
                    <td> <input type="submit" value="See Booking detail"/></td>

                </tr>
            </table>
            </table>
        </form>
        
       <form >
            <table class="table table-striped">
                <tr>
                    <th>Cid </th>
                    <th>CUSTOMER NAME </th>
                    <th>EMAIL </th>
                    <th>Car Name</th>
                    <th>Car Colour</th>
                    <th>Start Date </th>
                    <th>Return Date </th>
                    <th>Location </th>
                    <th>Booking Amount </th>
                    <th>Due </th>
                    <th>Payment Detail </th>
                    <th>EDIT </th>
                    <th>DELETE</th>
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
                       
                        <td><a href="upp.htm?cid=${b.cid}&name=${b.cname} &email=${b.email}&carname=${b.carname} &carcolour=${b.carcolour} &startdate=${b.startdate} & returndate=${b.returndate} & location=${b.location} & bookingamount=${b.bookingamount} & due=${b.due} & paymentdetail=${b.paymentdetail}"><img src="img/Edit24.gif"  alt="/">Update</a></td>
                         <td><a href="spoil.htm?cid=${b.cid}"><img src="img/Delete24.gif"  alt="/">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="adminpage.jsp">Back</a>
        
        
        
        
    </center>
    </body>
</html>
