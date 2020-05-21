<%-- 
    Document   : LOGIN
    Created on : 18 Nov, 2019, 9:44:26 PM
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

/* alert */

.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  
}

.alert.success {background-color: #3e693f;}

.alert2 {
  padding: 20px;
  background-color: #f44336;
  opacity: 1;
  color: white;
}


.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}

/* menu bar */

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
body {
  font-family: Arial, Helvetica, sans-serif;
 background-color: black;
  
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
    
  padding: 60px;
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
.loginbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
  opacity: 0.9;

}

.loginbtn:hover {
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

<%  int logOut=Integer.parseInt(request.getParameter("logOut")); %>
<%
             session.invalidate();
         %> 
    <body>
         <div class="topnav">
  <a class="active" href="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/2.2-ADMIN.jsp?AlogOut=0">Admin</a>
        </div>
        
         <% if(logOut==1){ %>
             <div class="alert success">
  <span class="closebtn">&times;</span>  
 <center> <strong>Logged Out Successfully!</strong> </center>
 
</div>  <% } %>
    
<% if(logOut==2){ %>   
<div class="alert2">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <center><strong>Incorrect Password</strong> </center>
</div> <% } %>
    
<% if(logOut==3){ %>     
<div class="alert2">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <center><strong>Incorrect Phone number</strong> </center>
</div> <% } %>
        
        
        
        <form action="3.1-LoginDB.jsp" method="post">
        <div class="container">
      <h1><center><font color="white">Login</center></h1>
      <p><center>Gear Up!!</center></p>
    <hr>
<center><table cellspacing="10">

     

<tr>
     <th> <center> <label for="ph"><b>Phone Number</b></label></th>
     <th> <input type="integer" placeholder="Phone Number" name="Lphone" required></center><br></th>
</tr>
<tr>
     <th> <center> <label for="psw"><b>Password</b></label></th>
     <th> <input type="password" placeholder="Enter Password" name="Lpassword" required></center><br></th>
</tr>

</table>   
</center>           
                
    <hr>
    

    <center><button type="submit" class="loginbtn" >login<br>
    
    
        </button></center>

        <div class="container signin">
            <p>Wanna gear up!! <a href="2.0-REGISTRATION.jsp">Registeration</a>.</p>
        </div>
  </div>
        </form>
        
       
        
    <script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>    
        
    </body>
</html>
