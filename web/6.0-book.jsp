<%-- 
    Document   : 6.0-book
    Created on : 26 Nov, 2019, 12:29:25 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 15px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
  
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 50px;
     background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("1.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  
  
}

/* Full-width input fields */
input[type=text],input[type=integer],input[type=text],input[type=integer], input[type=date], input[type=time] {
  width: 100%;
  padding: 15px;
  margin: 1px 0 30px 0;
  width: 300px;
  height: 40px;
  box-sizing: border-box;
  display: inline-block;
  color: black;

  
  
  border: none;
  background: #c9d4d2;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
  
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.confirmbookingbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}

.confirmbookingbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}
.topnav .login-container {
  float: left;
}
.topnav .login-container button {
  float: left;
  padding: 10px 16px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: #2c7d2f;
  color: white;
  font-size: 17px;
  border: none;
  cursor: pointer;
}
<div class="login-container">
    <form action="/action_page.php">
      
      <button type="submit">Login</button>
    </form>
  </div>




.topnav .login-container1 {
  float: right;
}
.topnav .login-container1 button {
  float: right;
  padding: 10px 16px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: #2c7d2f;
  color: white;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

/* Set a grey background color and center the text of the "sign in" section */

</style>
</head>
        <body>
            
            

    
    <% 
         int carid=Integer.parseInt(request.getParameter("carid"));
         int code=Integer.parseInt(request.getParameter("code"));
         int Admincode=Integer.parseInt(request.getParameter("Admincode"));
         String phone=(String)session.getAttribute("sessionId");
//------------------------------------------------------------------------------
    %>
    
    
      
    
<div class="topnav">
    <div class="login-container">
    <form action="4-brochure.jsp">
        <input type="hidden" name="Admincode" value="<%=Admincode%>">
      <button type="submit">Home</button>
    </form>
  </div>
  
   <div class="login-container1">
    <form action="2.1-LOGIN.jsp">
        <input type="hidden" name="Admincode" value="<%=Admincode%>">
        <input type="hidden" name="logOut" value="1">
      <button type="submit">Log Out</button>
    </form>
  </div>
      
      <div class="login-container1">
    <form action="aboutUs.jsp">
        <input type="hidden" name="Admincode" value="<%=Admincode%>">
      <button type="submit">About Us</button>
    </form>
  </div>
    </div>
    

<form action="6.1-successBook.jsp" method="post">
  <div class="container">
      <h1><center><font color="white">Book your Ride</center></h1>
      <p><center>Hurry up!! Get your Keys!</center></p>
    <hr>
<center><table cellspacing="10">
<tr>
     <th> <center><label for="id"><b>Car ID</b></label></th>
     <th><input type="text" placeholder="Car Id" name="carId" required value="<%=carid%>"></center><br> </th>
</tr>
<tr>
     <th> <center> <label for="ph"><b>phone number</b></label></th>
     <th> <input type="integer" placeholder="phone number" name="ph" required value="<%=phone%>"></center><br></th>
</tr>
<tr>
     <th><center><label for="ploc"><b>Pickup Location</b></label> </th>
     <th> <input type="text" placeholder="location" name="ploc" required value=""></center><br> </th>
</tr>
<tr>
     <th> <center><label for="dat"><b>Date</b></label> </th>
     <th> <input type="date" placeholder="00-00-000" name="date" required value=""></center><br> </th>
</tr>
<tr>
  <th> <center><label for="tim"><b>Time</b></label> </th>
  <th> <input type="time" placeholder="00:00:00" name="time" required value=""></center><br> </th>
</tr>




</table>   
</center>           
                
    <hr>
    

    <center><button type="submit" class="confirmbookingbtn" >Confirm Booking
    
        </button></center>
  </div>
  <input type="hidden" name="code" value="<%=code%>" >
    <input type="hidden" name="Admincode" value="<%=Admincode%>" >
  
</form>



    

        
    
    </body>
    
</html>
