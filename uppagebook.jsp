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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <style>
         table, td, input{
                font-size: 20px;
                color:#040505;
                background-color:#117a8b;
                width: 500px;
            }
            update{
               width:300px;
                
            }
            
        </style>
        
        <title>JSP Page</title>
    </head>
    <body>
    <center>
       <form action="uppagebook.htm">
            <table border="4">
                <tr>
                    <td>CID</td>
                    <td><input type="text"   name="cid" value="${book.cid}"/></td>
                </tr>
                <tr>
                    <td>NAME</td>
                    <td><input type="text"   name="cname" value="${book.cname}"/></td>
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td><input type="text" name="email"  value="${book.email}"/></td>
                </tr>
                
                 <tr>
                    <td>Car Name</td>
                    <td><input type="text" name="carname"  value="${book.carname}"/></td>
                </tr>
                
                <tr>
                    <td>Car Colour</td>
                    <td><input type="text" name="carcolour"  value="${book.carcolour}"/></td>
                </tr>
                
               
                
                 <tr>
                    <td>Booking Date</td>
                    <td><input type="text"  name="startdate" value="${book.startdate}"/></td>
                </tr>
                
                  <tr>
                    <td>Return Date</td>
                    <td><input type="text"  name="returndate"      value="${book.returndate}"/></td>
                </tr>
                  <tr>
                    <td>Location</td>
                    <td><input type="text"  name="location" value="${book.location}"/></td>
                </tr>
                  <tr>
                    <td>Booking Amount</td>
                    <td><input type="text"   name="bookingamount"   value="${book.bookingamount}"/></td>
                </tr>
                  <tr>
                    <td>Due</td>
                    <td><input type="text"   name="due" value="${book.due}"/></td>
                </tr>
                 <tr>
                    <td>Payment Detail</td>
                    <td><input type="text"   name="paymentdetail" value="${book.paymentdetail}"/></td>
                </tr>
                
                
                
                
                <tr>
                    <td> <input type="submit" value="Update" class="btn btn-warning"/></td>
                    
            </tr>
            </table>
       </form>
    </center>
    </body>
</html>
