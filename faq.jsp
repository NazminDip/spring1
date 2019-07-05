<%-- 
    Document   : faq
    Created on : Jun 29, 2019, 9:53:17 PM
    Author     : Dipty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
        
.collapsible {
  background-color:mrow;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color:blue;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: white;
}
p{
    
    font-size:30px;
    color:black;
}

button{
    
    font-size:25px;
    color:red;
    foreground-color:white;
}
</style>
</head>
<body>


<p></p>
<button class="collapsible" class="btn btn-outline-warning">What do I need to keep in mind when returning the car?</button>
<div class="content">
    


<p>Please make sure that you have not left anything inside the vehicle. We cannot be held responsible for any forgotten items or lost property.

  </p>
</div>
<br><br>
<button class="collapsible">Can I return the car to a different rental station?</button>

<div class="content">

<p>Yes. We provide a one-way service that allows return of the vehicle to a different rental station. Please note that a one-way fee may be charged depending on the distance between the pick-up and return rental stations.




</p>
</div><br><br>
<button class="collapsible">Can I cancel my reservation?</button>


<div class="content">

<p>Yes, reservations can be cancelled. Please contact us as soon as possible if you wish to cancel your reservation. 
    The reservation number issued when you made the reservation and the email address you registered at the time 
    of reservation are required to cancel or make changes to your reservation.

Inquiries Regarding Reservations


 </p>
</div><br><br>



 

<button class="collapsible" class="btn btn-outline-warning">    
What should I do if I am unable to return the car with a full tank?</button>
<div class="content">


<p>You may return the vehicle to the station as it is. Please pay the refueling fee predetermined by the company in accordance with the distance traveled.



</p>
</div>
<br><br>


<button class="collapsible" class="btn btn-outline-warning">    
Can You Offer a discount on rent?</button>
<div class="content">

    <p>No, We don' t have any discount offer now.</p>

</p>
</div>
<br><br>


<button class="collapsible" class="btn btn-outline-warning">    
How and where can i return rental car?</button>
<div class="content">


    <p>
 Tell  us  your destination city and ask for options with 
respect to where you will be able to return the car before rent a car. If you have to return the car at a different spot from 
where you rent it, you have to pay more additional charges depending on the returning location.
Otherwise you can return your car in Your pick up destination or our Main branch 15/2 floor No:5 level-3 East
Uttara Dhaka-1000.
Or contact us our gmail.We will provide our workers to get back the rental Car.


    </p>
    
</div>
<br><br>













<a href="index.jsp">Back</a>





















<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>
</body>
</html>