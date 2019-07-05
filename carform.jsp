<%-- 
    Document   : form
    Created on : May 25, 2019, 8:07:18 PM
    Author     : Dipty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapmin.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  
       
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <title>JSP Page</title>
                   
<style>
    
    .button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color:#c82333;
  background-color:#C9CDD7;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    form{
        font-size: 30px;
        color:#002752;
        
    }
    body{
        background-color:#f8f9fa;
    }
      h1{
                
                font-size: 30px;
                color:#aa0a5f;
            }
        
</style>
         
   
   
    </head>
    <body>
    <center>  <img src="img/p10.jpg" alt=""/></center>
        
    
       
    <body>
        
    <center> 
        <h1>Enter New Car </h1>
        <form action="deposit.htm">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text"  class="form-control" name="id"/></td>
                </tr>
                  <tr>
                       <td>Car Name:</td>
                    <td><input type="text" class="form-control" name="carname"/></td>
                </tr>
                <tr>
                       <td>Car Image:</td>
                    <td><input type="file" class="form-control" name="img"/></td>
                </tr>
                  <tr>
                       <td>Car Brand:</td>
                    <td><Select  name="carbrand"/>
                    <option>Toyota</option>
                    <option>Pajero</option>
                    <option>Sedan</option>
                    <option>Suv</option>
                    <option>MPV</option>
                    <option>Ferrari</option>
                    <option>Crossover</option>
                    <option>Skoda</option>
                    <option>Hatchback</option>
                    <option>Sedan</option>
                    <option>Crossover</option>
                    <option>Others</option>
            </select></td>
                    
                    
                </tr>
                  <tr>
                       <td>Price:</td>
                    <td><input type="price" class="form-control"  name="price"/></td>
                </tr>
                
                 <tr>
                    <td>Car Colour:</td>
                    <td><select name="carcolour">   
                             <option></option>
                             <option>Choose Car Color:</option>   
                            <option>Red</option>
                            <option>Orange</option>
                            <option>Green</option>
                            <option>Brown</option>
                            <option>Yellow</option>
                            <option>Black</option>
                            <option>Blue</option>
                            <option>Dark Blue</option>
                            <option>Pink</option>
                            <option>White</option>
                            <option>Choclate</option>
                            <option>Others</option>
                       
                </tr>
                
                
                   <tr>
                       <td>Status:</td>
                    <td><Select  name="status">
                    <option>Available</option>
                    <option> Not Available</option>
                        </select> </td>
                </tr>
                    <tr>
                       <td>Fare:</td>
                    <td><input type="text" class="form-control"  name="fare"/></td>
                </tr>
                
                
                
                
          
             <tr>
                      
                    <td><input type="submit"  class="form-control"  value="Save"/></td>
                </tr>
               </table>
        </form>
        <form action="prosper.htm">
            <table>
                <tr>
                    <button class="button">Show</button>
               
                </tr>
            </table>
        </form>
        
       
        
       
        
    </center>
    
   
        
        
        
    </body>
</html>
