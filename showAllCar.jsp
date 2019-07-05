<%-- 
    Document   : showAllCar
    Created on : Jul 1, 2019, 9:28:29 AM
    Author     : Dipty
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        
        <style>
            #ll{
                
                font-size: 30px;
                color:#00b26f;
                margin-left: 90px;
                text-align: center;
            }
            
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Login
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            
                             <a class="dropdown-item" href="adminlog.jsp" class="btn btn-info"><img src="img/Lock-Lock-icon.png"  alt="/">Admin</a>
          <a class="dropdown-item" href="userlog.jsp" ,"btn btn-info"><img src="img/cc.gif"  alt="/">User</a>
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
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-primary text-light" role="alert">
                        <h1 class="text-danger">
                           <c:out value="${msg}"></c:out>
                            </h1>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container">
                <div class="row">
                <c:forEach items="${allCar}" var="cc">
                    <div class="col-md-3 mt-3">
                        <div class="card">
                            <img src="img/${cc.img}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title" style="text-transform: uppercase"> ${cc.carname}</h2>
                                <h5 class="card-title">BRAND: ${cc.carbrand}</h5>
                                <h5 class="card-title">COLOR: ${cc.carcolour}</h5>
                                <h5 class="card-title">STATUS: ${cc.status}</h5>
                                <h5 class="card-title">FARE: ${cc.fare}</h5>
                                <a href="bookNow.htm?id=${cc.id}" class="btn btn-danger text-center btn-block">BOOK NOW</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
                            
                            
  <!--  <center>                        <p><b>MAke your Booking Payment</b></p>
                    <a href="bkash.jsp"><img src="img/bkas.png" style="width:150px"></a></td><br><br>
                 <a href="credit.jsp"><img src="img/cred.jpg" style="width:150px"></a></td><br></br>
                                
                                
                                </div> 
                                
</center>   !-->  
                           
                            
                            
                            <a     href="index.jsp"><b id="ll">Log out</b></a>
    </body>
</html>
