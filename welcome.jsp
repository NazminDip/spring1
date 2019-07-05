<%-- 
    Document   : welcome.jsp
    Created on : Jun 25, 2019, 11:40:12 PM
    Author     : Dipty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <style>
            body{
                background-color:#11998e;
            }
            #a{
                
                margin-left: 90px;
                 
                
                font-size: 40px;
                color:#00b26f;
            
            
                text-align: center;
            }
            
            b{
                
                margin-top: 50px;
                font-size: 30px;
                color:black;
                
            }
            h1{
                margin-top: 90px;
            }
        </style>
    </head>
    <body>
    <center> <h1 style="font-size:30px, color:black">Your Registration  have successfully completed.</center>
        </h1>
    <center><p id="b">You can Now Login Here</p></center>
        
        <!--<center>
          <form action="find.htm">
          <table>
          <tr>
          <td><input type="submit" value="Login"/></td>
        
      </tr>
 </table>
       </form>
 </center>!-->
        <a id="a" href="index.jsp">Login</a>

    </body>
</html>
