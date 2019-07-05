<%-- 
    Document   : bookCar
    Created on : Jul 1, 2019, 11:02:19 AM
    Author     : Dipty
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        
        <style>
                
           


           
    </style>
        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.jsp">HOME</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="about.jsp">About<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="card2.jsp">Cars</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            
                        </a>
                      <!--  <div class="dropdown-menu" aria-labelledby="navbarDropdown"">
                        <a class="dropdown-item" href="adminlog.jsp" class="btn btn-info"><img src="img/Lock-Lock-icon.png"  alt="/">Admin</a>
          <a class="dropdown-item" href="userlog.jsp" class="btn btn-info"><img src="img/cc.gif"  alt="/">User</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>!-->
                      
                      
                      
                       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="adminlog.jsp" class="btn btn-info"><img src="img/Lock-Lock-icon.png"  alt="/">Admin</a>
          <a class="dropdown-item" href="userlog.jsp" class="btn btn-info"><img src="img/cc.gif"  alt="/">User</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="index.jsp"class="btn btn-info"><img src="img/log.gif"  alt="/">Log out</a>
        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="contact.jsp" tabindex="-1" aria-disabled="true">Contact</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>

        <!--------------------------------------------------------->
        <div class="container mt-5" img src="img/t3.png" width="200px" alt=""/>
            <div class="row">
                <div class="col-md-2"></div>

                <c:forEach items="${aSelectedCar}" var="cr">
                    <div class="col-md-8">
                        <div class="jumbotron bg-light">
                            <form action="saveBooking.htm" method="POST">
                                 <div class="form-group">
                                     <input type="text" name="cname" class="form-control" placeholder="Enter Your Name" required="true">
                                </div>
                                 <div class="form-group">
                                     <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required="true"  >
                                </div>
                                <div class="form-group">
                                    <input type="text" name="carname" value="${cr.carname}" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="carcolour" value="${cr.carcolour}" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="startdate" value="<%= (new java.util.Date().toLocaleString())%>" readonly class="form-control" placeholder="Start Date">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="returndate" class="form-control" placeholder="Return Date">
                                </div>
                            <!--   <div class="form-group">
                                    <select name="location" class="form-control">
                                        <option value="">SELECT LOCATION</option>
                                        <option value="DHAKA">DHAKA</option>
                                        <option value="CUMILLA">CUMILLA</option>
                                        <option value="KHULNA">KHULNA</option>
                                        <option value="Cash">Cash</option>
                                        <option value="Cash">Cash</option>
                                        <option value="Credit Card">Credit Card</option>
                                        <option value="BKsh">BKsh</option>
                                    </select>!-->
                            
                                   <div class="form-group">
                                       <input type="text" name="location" class="form-control" placeholder="location" required="true">
                                   
                                   
                                </div>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                <div class="form-group">
                                    <input type="number" name="bookingamount" placeholder="Enter Booking Amount" class="form-control">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" name="due" placeholder="Remaining Cost" class="form-control">
                                </div>
                                
                                
                                <br><br>
                        
                                     
                                   <div class="form-group">
                                    <select name="paymentdetail" class="form-control">
                                        
                                        <option value="">Select advance Payment method</option>
                                        
                                       
                                        <option value="Cash">Cash</option>
                                        <option value="Credit Card">Credit Card</option>
                                        <option value="BKsh">BKsh</option>
                                    </select>
                                   
                                    
                                   
                                   </div>
                           
                                
                           
                                
                                
                            
                                 
                                                      <!--  <p><b>MAke your Booking Payment</b></p>
                    <a href="bkash.jsp"><img src="img/bkas.png" style="width:150px"></a></td><br><br>
                 <a href="credit.jsp"><img src="img/cred.jpg" style="width:150px"></a></td><br></br>!-->
                                
                                
                                
                                
                                
                                
                                
                               <button type="submit" class="btn btn-primary">CONFIRM</a></button>
                                <a href="showCardForBooking.htm" class="btn btn-danger">CANCEL</a>
                               
                            </form>
                        </div>
                    </div>
                </c:forEach>

                <div class="col-md-2"></div>
            </div>
        </div>
    </body>
</html>
