<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
  margin: 0;
  
}

* {
  box-sizing: border-box;
}



.topnav {
  overflow: hidden;
  background-color: #333;
}


.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 13px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2c7d2f;
  color: white;
}








/* Add padding to containers */
.container {
  padding: 35px;
 background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("2.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  
  
}

/* alert */



.closebtn:hover {
  color: black;
}

/* Full-width input fields */
input[type=text],input[type=text],input[type=text], input[type=password],input[type=integer],input[type=varchar] {
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
.adcbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}

.adcbtn:hover {
  opacity: 1;
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
/* Add a blue text color to links */


/* Set a grey background color and center the text of the "sign in" section */

</style>
</head>
<body>
    
  <div class="topnav">
    <div class="login-container">
    <form action="4-brochure.jsp">
        <input type="hidden" name="Admincode" value="1">
      <button type="submit">Home</button>
    </form>
  </div>
  
   <div class="login-container1">
    <form action="2.1-LOGIN.jsp">
        <input type="hidden" name="Admincode" value="1">
        <input type="hidden" name="logOut" value="1">
      <button type="submit">Log Out</button>
    </form>
  </div>
      
      <div class="login-container1">
    <form action="aboutUs.jsp">
        <input type="hidden" name="Admincode" value="1">
      <button type="submit">About Us</button>
    </form>
  </div>
    </div>
<form action="9.1-RegNewCar.jsp" method="POST">
  <div class="container">
      <h1><center><font color="white">Add Car</center></h1>
     
    <hr>
<center><table cellspacing="10">
        <tr>
     <th> <center><label for="nam"><b>Car Name</b></label> </th>
     <th> <input type="text" placeholder="Name" name="carName" required></center></th>
</tr>
<tr>
     <th> <center><label for="cid"><b>Car ID</b></label></th>
     <th><input type="text" placeholder="CID" name="carid" required></center><br> </th>
</tr>
<tr>
  <th> <center><label for="cid"><b>Seats</b></label></th>
  <th><input type="text" placeholder="seats" name="seats" required></center><br> </th>
</tr>
<tr>
  <th> <center><label for="cid"><b>Price</b></label></th>
  <th><input type="text" placeholder="Rs." name="price" required></center><br> </th>
</tr>
<tr>
  <th> <center><label for="cid"><b>User Rating</b></label></th>
  <th><input type="text" placeholder="rating" name="userRating" required></center><br> </th>
</tr>
<tr>
     <th><center><label for="etype"><b>Engine Type</b></label> </th>
     <th> <input type="text" placeholder="E-Type" name="engineType" required></center><br> </th>
</tr>
<tr>
     <th> <center><label for="gear"><b>Gear Type</b></label> </th>
     <th> <input type="text" placeholder="G-Type" name="gearType" required></center><br> </th>
</tr>
<tr>
     <th>  <center> <label for="cc"><b>CC</b></label></th>
     <th> <input type="varchar" placeholder="CC" name="CC" required></center><br></th>
</tr>
<tr>
     <th> <center> <label for="bhp"><b>BHP</b></label></th>
     <th> <input type="integer" placeholder="bhp" name="BHP" required></center><br></th>
</tr>
<tr>
     <th> <center> <label for="ms"><b>Music System</b></label></th>
     <th> <input type="text" placeholder="Music" name="musicSystem" required></center><br></th>
</tr>
<tr>
     <th> <center><label for="air"><b>Airbags</b></label> </th>
     <th> <input type="text" placeholder="Airbags" name="airbags" required></center></th>
</tr>
<tr>
     <th> <center><label for="tp"><b>TOP SPEED</b></label> </th>
     <th> <input type="text" placeholder="Speed" name="topSpeed" required></center></th>
</tr>
<tr>
     <th> <center><label for="acc"><b>Accelaration</b></label> </th>
     <th> <input type="text" placeholder="0-100kmph" name="acceleration" required></center></th>
</tr>
<tr>
     <th> <center><label for="lux"><b>Luxury Rating</b></label> </th>
     <th> <input type="text" placeholder="0-5" name="luxRating" required></center></th>
</tr>
<tr>
     <th> <center><label for="saf"><b>Safety Rating</b></label> </th>
     <th> <input type="text" placeholder="0-5" name="safRating" required></center></th>
</tr>
<tr>
     <th> <center><label for="img"><b>Car Image</b></label> </th>
     <th> <input type="text" placeholder="Image" name="image" required></center></th>
</tr>

</table>   
</center>           
                
    <hr>
    

    <center><button type="submit" class="adcbtn" >Add Car
    
        </button></center>
    
 
  </div>
 
    
  
  
    
</form>








</body>
</html>
