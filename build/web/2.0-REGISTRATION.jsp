<%-- 
    Document   : REGISTRATION
    Created on : 18 Nov, 2019, 9:44:42 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
  margin: 0;
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

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 35px;
          background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("1.jpg");

  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  
  
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
input[type=radio]{
     width: 30%;
  padding: 10px;
  margin: 0px 0 15px 0;
  width: 50px;
  height: 30px;
  box-sizing: border-box;
  display: inline-block;
  color: black;
    
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
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
    <body>
         <div class="topnav">
        <a class="active" href="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/2.2-ADMIN.jsp?AlogOut=0">Admin</a>
    </div>
        
        
        
        <%
             session.invalidate();
         %>  
         
        <form action="3.0-RegistrationDB.jsp" method="post">
           <div class="container">
      <h1><center><font color="white">Registration Form</center></h1>
      <p><center>Please fill in this form to create an account.</center></p>
    <hr>
<center><table cellspacing="10">
<tr>
     <th> <center><label for="fname"><b>First Name</b></label></th>
     <th><input type="text" placeholder="First Name" name="firstname" value="" required></center><br> </th>
</tr>
<tr>
     <th><center><label for="lname"><b>Last Name</b></label> </th>
     <th> <input type="text" placeholder="Last Name" name="lastname" value="" required></center><br> </th>
</tr>
<tr>
     <th><center><label for="gender"><b>Gender</b></label> </th>
    <th align="left"> <input type="radio" placeholder="M/F" name="gender" value="M" required CHECKED>Male 
         <input type="radio" placeholder="M/F" name="gender" value="F" required >Female           </center><br> </th>
</tr>
<tr>
     <th> <center><label for="email"><b>Email</b></label> </th>
     <th> <input type="text" placeholder="Enter Email" name="email" value="" required></center><br> </th>
</tr>
<tr>
     <th>  <center> <label for="dl"><b>DL No</b></label></th>
     <th> <input type="varchar" placeholder="DL" name="dlno" value="" required></center><br></th>
</tr>
<tr>
     <th> <center> <label for="ph"><b>phone number</b></label></th>
     <th> <input type="integer" placeholder="phone number" name="Rphone" value="" required></center><br></th>
</tr>
<tr>
     <th> <center> <label for="psw"><b>Password</b></label></th>
     <th> <input type="password" placeholder="Enter Password" name="Rpassword" value="" required></center><br></th>
</tr>
<tr>
     <th> <center><label for="psw-repeat"><b>Repeat Password</b></label> </th>
     <th> <input type="password" placeholder="Repeat Password" name="psw-repeat" required></center></th>
</tr>
</table>   
</center>           
                
    <hr>
    

    <center><button type="submit" class="registerbtn" >Register
    
        </button></center>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/2.1-LOGIN.jsp?logOut=4">Log in</a>.</p>
  </div>
       
        
        
        
        <br>
        
    </body>
</html>
