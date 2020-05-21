<%-- 
    Document   : brochure
    Created on : 18 Nov, 2019, 11:58:37 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BROCHURE</title>
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
    
  padding: 350px;
  
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  
  
}
.bottom-left {
  position: absolute;
  bottom: 20px;
  left: 16px;
}

.top-left {
  position: absolute;
  top: 50px;
  left: 14px;
}

.top-right {
  position: absolute;
  top: 50px;
  right: 16px;
}

.bottom-right {
  position: absolute;
  bottom: 20px;
  right: 16px;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}


th, td {
  padding: 16px;
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

</style>
        
        
        
        
    </head>
<body>
     <%  int Admincode=Integer.parseInt(request.getParameter("Admincode"));
     String phone=(String)session.getAttribute("sessionId");%>   
     
<div class="topnav">
    
  
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
        
        
  <div class="centered">
        
      

<center><table style="width:100%">
<tr>
<td>

<form action="5.0-car1.jsp" method="get" >
  <input type="hidden" name="code" value="1"><br>
  <input type="hidden" name="Admincode" value="<%=Admincode%>" >
  <input type="image" src="lambo1.png" alt="LAMBORGHINI" width="210" height="180" >
</form>
</td>
<td>
        
    <form action="5.0-car1.jsp" method="get">
  <input type="hidden" name="code" value="2"><br>
  <input type="hidden" name="Admincode" value="<%=Admincode%>" >
  <input type="image" src="ferrari1.png" alt="ferrari1.png" width="210" height="180">
</form>
   </td>
<td> 
    
  <form action="5.0-car1.jsp" method="get">
  <input type="hidden" name="code" value="3"><br>
  <input type="hidden" name="Admincode" value="<%=Admincode%>" >
  <input type="image" src="Bmw1.png" alt="Bmw1.png" width="210" height="180">
</form>        
    </td>
<td> 
    
  <form action="5.0-car1.jsp" method="get">
  <input type="hidden" name="code" value="4"><br>
  <input type="hidden" name="Admincode" value="<%=Admincode%>" >
   <input type="image" src="mer1.png" alt="mer1.png" width="210" height="190">
</form></td>
<td>
        
  <form action="5.0-car1.jsp" method="get">
  <input type="hidden" name="code" value="5"><br>
  <input type="hidden" name="Admincode" value="<%=Admincode%>" >
  <input type="image" src="royce1.png" alt="royce1.png" width="190" height="210">
</form><br><br>
</td>
</tr>
</table></center>
</div>

</body>
</html>
