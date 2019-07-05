<%-- 
    Document   : validform
    Created on : Jun 24, 2019, 5:31:33 PM
    Author     : Dipty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>

    
                 
    <form action="drkr.htm">
            <table>
                  <!--  <tr>
                <td>CID</td>
                <td><input type="text" value="cid" /></td>
            </tr>!-->
                   <tr>
                       <td>Name:</td>
                       <td><input type="text"     class="form-control-lg"       placeplaceholder="Enter Your Name" name="name" required="true"/></td>
                </tr>
               
                  <tr>
                       <td>Email:</td>
                       <td><input type="text"     class="form-control-lg"       placeplaceholder="Enter Your Email" name="email" required="true"/></td>
                </tr>
                  <tr>
                       <td>Password:</td>
                       <td><input type="password"  class="form-control-lg"  placeplaceholder="Enter Your password" name="password" required/></td>
                </tr>
                
             <tr>
                       <td>Message:</td>
                       <td><textarea cols="30"  rows="5"  required></textarea></td>
                </tr>
                    
                
                
                
          
             <tr>
                      
                 <td><input type="submit" value="Sumit" class="btn btn-info" width="200px"/></td>
                </tr>
               </table>
        </form>
                   
                   
               </div>
               
               
               
               
               
               
           </div>
       </div>  
                
                
                
                
                
                
    </body>
</html>
