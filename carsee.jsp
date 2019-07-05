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
        
                                           
  <form action="carkhoz.htm">
   <div class="from-group">
    
   <label for="carname">Car Name:</label>
   <input class="form-control" type="text"  name="carname" placeholder="Enter Your CarName.." required="true"/> 
  <label for="carcolour">Car Colour:</label>
  <input  class="form-control"  type="text"  placeholder="Enter Your CarColour.."  name="carcolour"  required="true"/>
     <table>
                <tr>
                <button class="button">Search For Available Car</button>
               
                </tr>
          
            </table>
    
   </div>
        
    
  </form>
        
        
        
        
        
    <center>
        <h1>Car Detail</h1>
       <form>
            <table border="1">
                <tr>
                    <th>ID </th>
                    <th>Car NAME </th>
                    <th>Car Image</th>
                    <th>Car Brand</th>
                    <th>Price </th>
                    <th>Car Colour</th>
                    <th>Status</th>
                    <th>Fare </th>
                  
                    <th>Action</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${list}" var="c">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.carname}</td>
                        <td>${c.img}</td>
                        <td>${c.carbrand}</td>
                        <td>${c.price}</td>
                        <td>${c.carcolour}</td>
                        <td>${c.status}</td>
                        <td>${c.fare}</td>
                        
                       
                        <td><a href="carup.htm?id=${c.id}&carname=${c.carname} &img=${c.img}& carbrand=${c.carbrand}& price=${c.price}& carcolour=${c.carcolour} & status=${c.status} & fare=${c.fare}"><img src="img/Edit24.gif"  alt="/">Update</a></td>
                         <td><a href="card.htm?id=${c.id}"><img src="img/Delete24.gif"  alt="/">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="adminpage.jsp">Back</a>
        
        
        
        
    </center>
    </body>
</html>
