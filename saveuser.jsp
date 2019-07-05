<%-- 
    Document   : save
    Created on : May 25, 2019, 8:39:05 PM
    Author     : Dipty

--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapmin.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  
        
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


div {
    width: 500px;
    height: 500px;
    margin: auto;
  border-radius: 5px;
 
  padding: 20px;
}


            body{
              
                
                background-image:url("img/ca.jpg");
             
              opacity:100%;
            margin-top: 10px;
           background-color:#ccc;
           width: 1000px;
         
           
                  background-repeat: no-repeat;
                
            }
                
                
                
                h1{
                    
                font-size: 25px;
                color:black;
                margin-top: 50px;
                }
                
                
                td{
                    
                    font-size: 30px;
                    color: brown;
                        
                    
                }
                checkbox{
                    
                    width: 100px;
                }
     </style>
    
    </head>
        <body>
        <center>
               <h1><b>New Registration Form</b></h1>
          <form action="use.htm">
          <table>
          <tr>
          <!--<td>ID:</td>
          <td><input  class="form-control"    type="text" name="id" required="true"/></td>
      </tr>!-->
      <tr>
      <td>Full Name:</td>
      <td><input class="form-control"   type="text" name="name"  required="true"/></td>
      </tr>
      <tr>
    <td>Email:</td>
    <td><input  class="form-control"     type="text" name="email"/></td>
          <td><form:errors path="user.email"/></td>
    </tr>
    <tr>
    <td>Password:</td>

    <td><input   class="form-control"   type="password" name="password" required="true"/></td>
       
    </tr>
    <tr>
     <td>Gender:</td>
     <td><input  type="radio"  name="gender" value="FEMALE">FEMALE
     
    <input  type="radio" name="gender" value="MALE">MALE </td>
    </tr>

    <tr>
        
        <tr>
     <td>check out:</td>
     <td><input  type="checkbox" class="form-check" name="checkout" value="mm"> I am agree with all terms and condition.
     
   
    </tr>

    <tr>

        <td><input type="submit" value="Register"/></td><br><br>
       
    </tr>
    </table>
    </form>
     <a href="index.jsp"><input type="Submit" value="Cancel"/></a>
        </center>
    
    <!-- <form action="show.htm">
    <table>
    <tr>
    <td><input type="submit" value="show"/></td>
        </tr>
        </table>
</form>!-->
       <!--  <center>
          <form action="find.htm">
          <table>
          <tr>
          <td><input type="submit" value="Login"/></td>
        
      </tr>
 </table>
       </form>
 </center>!-->


      </body>
      </html>
