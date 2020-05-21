<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body{
        background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("2.jpg");
        height: 100%;
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

/* card */
    
    .right{
    position: absolute;
    bottom: 74px;
    right: 150px;
    }
    
    
    .left{
    position: absolute;
    bottom: 34px;
    left: 150px;
    
}
    
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 400px;
  margin: auto;
  text-align: center;
  font-family: arial;
  margin-bottom: 40px;
  
 
}
.card1 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 400px;
  margin: auto;
  text-align: center;
  font-family: arial;
  

}


.title {
  color: grey;
  font-size: 20px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}

  hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
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

<%  int Admincode=Integer.parseInt(request.getParameter("Admincode")); %>
<body>

  <div class="topnav">
    <div class="login-container">
    <form action="4-brochure.jsp">
        <input type="hidden" name="Admincode" value="<%=Admincode%>">
      <button type="submit">Home</button>
    </form>
  </div>
  
   
  
      <div class="login-container1">
    <form action="2.1-LOGIN.jsp">
        
        <input type="hidden" name="logOut" value="1">
      <button type="submit">Log Out</button>
    </form>
  </div>
  </div>


    <h1><font color="grey"><center> Developers</center></h1></font>
<hr>
<div class="left">
<div class="card"  style="padding:40px">
  
  <h1>Bharath J</h1>
  <p class="title" style="padding:30px">Frontend Developer</p>
  
  <p>VVIET</p>
  <div style="margin: 70px ;">
    
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Contact</button></p>
</div>
</div>

<div class="right">
<div class="card1"  style="padding:40px">
  
  <h1>Dheeraj G</h1>
  <p class="title" style="padding:30px">Backend Developer</p>
  <p>VVIET</p>
  <div style="margin: 70px 0;">
    
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Contact</button></p>
</div>
</div>


</body>

</html>
