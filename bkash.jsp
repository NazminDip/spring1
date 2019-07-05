<%-- 
    Document   : bks
    Created on : Jun 15, 2019, 12:50:05 AM
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
                
                background-color:#cce5ff;
            }
            h1{
                
                font-size: 30px;
                color:#b21f2d;
            }
            td{
                
                font-size: 20px;
                color:#000;
            }
        </style>
    </head>
    <body>
         <center>
         <form action="bks.htm">
             <h1><b>Payment Form</b></h1>
            <table>
             <!--  <tr>
                    <td>CID:</td>
                    <td><input class="form-control"  type="text" name="cid"/></td>
                </tr>!-->
                  <tr>
                       <td>Mobile No:</td>
                    <td><input class="form-control" type="text" name="mobileno" required="true"/></td>
                </tr>
                  <tr>
                       <td>Amount:</td>
                    <td><input  class="form-control"  type="text" name="amount" required="true"/></td>
                   
                </tr>
                <tr>
                 <td><a href="bksuccess.jsp"><input type="submit" value="Payment"/></a></td>
                
                </tr>
            </table>
         </form>
           
           <!--  <form action="bkk.htm">
                 <table>
                     <tr>
                         <td><input type="submit" value="show"/></td>
                     </tr>
                 </table>
             </form>!-->
           
        
             
          
    </body>
</html>
