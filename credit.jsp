<%-- 
    Document   : cred
    Created on : Jun 15, 2019, 1:25:22 AM
    Author     : Dipty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
input[type=text], password {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
body{
    
    margin-top: 80px;
    background-color:#cce5ff;
}

input[type=submit] {
  width: 100%;
  background-color:#73fbaf;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=submit]:hover {

}

td{
    
    
    font-size: 30px;
    color:brown;
}

</style>
    </head>
    <body>
        <center>
            <h1><b>Credit Card Payment Form</b></h1>
         <form action="credit.htm">
             
            <table>
             <!--  <tr>
                    <td>CID:</td>
                    <td><input class="form-control"  type="text" name="cid"/></td>
                </tr>!-->
                  <tr>
                       <td>Client Name:</td>
                    <td><input class="form-control" type="text" name="name" required="true"/></td>
                </tr>
                  <tr>
                       <td>Card No::</td>
                    <td><input class="form-control" type="text" name="cardno" required="true"/></td>
                </tr>
                  <tr>
                       <td>Password:</td>
                    <td><input  class="form-control"  type="password" name="password" required="true"/></td>
                   
                </tr>
                  <tr>
                       <td>Expire Date:</td>
                    <td><input class="form-control" type="date"  ng-model="SimpleForm.date"   name="expiredate" required="true"/></td>
                </tr>
                
                  <tr>
                       <td>Amount:</td>
                    <td><input class="form-control" type="text"  type="text" name="amount" required="true"/></td> 
                </tr>
                
                
                
                
                <tr>
                 <td><a href="creditsuccess.jsp"><input type="submit" value="Payment"/></a></td>
                
                </tr>
            </table>
         </form>
    </body>
</html>
