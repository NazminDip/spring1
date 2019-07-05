<%-- 
    Document   : newjspinsert
    Created on : May 27, 2019, 4:39:15 PM
    Author     : Dipty
--%>

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
              
                
                background-image:url("img/p10.jpg");
             background-position: center;
              opacity:100%;
            margin-top: 50px;
            margin-left: 100px;
           background-color:#ccc;
           width: 1000px;
         
           
                  background-repeat: no-repeat;
                
            }
            
            h1{
                
                font-size: 50px;
                text-align:right;
                color:brown;
              
            }
            #ll{
                
                font-size: 30px;
                color:#00b26f;
            }
            
              #f{
                
                font-size: 30px;
                color:#bd2130;
            }
             #w{
                
                font-size: 30px;
                color:#004085;
            }
           
           
</style>
         
   
   

    </head>
<body>
    
    <h1><b>Rent A Car  get Login first</b></h1>
    
<div>
      
  <form action="find.htm">
      
   <label for="email">Email:</label>
   <input class="form-control" type="text"  name="email" placeholder="Enter Your Email.." required="true"/> 
  <label for="password">Password:</label>
  <input class="form-control" type="password"  name="password" placeholder="Enter Your password.." required="true"/>
                           
    <input type="submit"  value="Login"/>
    <a href="contact.jsp"> <b id="f">Forget password?</b></a><br><br>
    <a href="saveuser.jsp"> <b id="w">New ?Register First</b></a>
    
    
        
    
  </form>
     
    <a href="index.jsp"> <b id="ll">Logout</b></a>
    
    </div>
           </body>
 
</html>
 
       
   
   
       
      
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 