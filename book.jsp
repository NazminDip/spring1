<%-- 
    Document   : save
    Created on : May 25, 2019, 8:39:05 PM
    Author     : Dipty
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                text-align: center;
            }

            input[type=submit] {
                width: 100%;
                background-color:#b3d7ff;
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


                background-image:url("img/12.jpg");
                background-position: center;
                opacity:100%;
                margin-top: 10px;
                background-color:#ccc;
                width: 1000px;


                background-color:#ccc;



                background-repeat: no-repeat;

            }
            h1{

                font-size: 50px;
                color:brown;

            }

            td{

                font-size: 32px;
                color:#bd2130;
             
            }
            form{
                
                margin-left: 80px;
                
            }

        </style>






    </head>
    <body>
    <center>
        <form action="book.htm">
            <center> <h1><b>Booking Form</b></h1></center>
            <table>
                <!--  <tr>
                      <td>CID:</td>
                      <td><input class="form-control"  type="text" name="cid"/></td>
                  </tr>!-->
                <tr>
                    <td>Customer name:</td>
                    <td><input class="form-control" type="text" name="cname" required="true"/></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input  class="form-control"  type="text" name="email" required="true"/></td>
                    <!--<td><form:errors path="user.email"/></td>!-->
                </tr>

                <tr>
                    <td>Car name:</td>
                    <td><input class="form-control" type="text" name="carname" required="true"/></td>
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
                            <option>DarkBlue</option>
                            <option>Pink</option>
                            <option>White</option>
                            <option>Choclate</option>
                            <option>Others</option>
                       
                </tr>




                <tr>
                    <td>Start Date:</td>
                    <td><input  class="form-control"   type="date" name="startdate" ng-model="SimpleForm.date"  placeholder="dd/mm/yy"  required="true"/></td>
                </tr>



                <tr>
                    <td>Return Date:</td>
                    <td><input  class="form-control" type="date" name="returndate"   ng-model="SimpleForm.date"               placeholder="dd/mm/yy" required="true"/></td>
                </tr>
                <tr>

                <tr>
                    <td>Location:</td>
                      <td><input  class="form-control" type="text" name="location" required="true"/></td>
                <!-- <td><textarea cols="10" rows="5"  name="location"required="true"></textarea></td>!-->


                </tr>
                  
                
                
                
                

                <tr>
                    <td>Booking amount:</td>
                    <td><input   class="form-control" type="text" name="bookingamount" required="true"/></td>


                </tr>

                <tr>
                    <td>Due:</td>
                    <td><input  class="form-control" type="text" name="due"/></td>


                </tr>

                <tr>
                    <td>Payment Detail:</td>
                    <td><select name="paymentdetail">   
                            <option></option>
                                <option>Select PaymentMethod</option>
                            <option>Cash</option>
                            <option>Credit card</option>
                            <option>Bkash</option>
                        </select> </td>
              
                    <td><input  type="submit" value="confirm Booking"/></td>


                </tr>
                <tr>
                    <td>Make Advance Booking Payment</td>
                    <td><a href="bkash.jsp"><img src="img/bkas.png" style="width:150px"></a></td><br><br>
                <td> <a href="credit.jsp"><img src="img/cred.jpg" style="width:150px"></a></td><br></br>
               <!-- <td> <a href=""><img src="img/cash.jpg" style="width:150px"></a></td><br><br>!-->
                
                </tr>

                <tr>                 
                    <td><center><a href="lookbook.jsp"><b>See Your Booking Detail</b></a></center>
                </tr>
            </table>  
            
            
            

        </form>
        <center><td><a href="index.jsp"><input type="submit" value="Cancel"/></a></center>
    </center>
    <!--<form action="meet.htm">
               <table>
                   <tr>
                       <td><input type="submit" value="show"/></td>
                   </tr>
               </table>
           </form>
       </body>!-->

</html>
