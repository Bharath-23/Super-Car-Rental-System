<%-- 
    Document   : 8.0-addCar
    Created on : 26 Nov, 2019, 10:20:13 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
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

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 35px;
 background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("2.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  
  
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
.uptbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}

.uptbtn:hover {
  opacity: 1;
}
    
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("2.jpg");
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 14px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
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
</style>
</head>
    <body>
        
        
        <% 
             int AdminModifyCode=Integer.parseInt(request.getParameter("AdminModifyCode"));
             int carid=Integer.parseInt(request.getParameter("carid"));
             int code=Integer.parseInt(request.getParameter("code"));
             String err="SQL First Error";
             int rowsUpdated1=0;
             int rowsUpdated2=0;
             
        %>
        
         
        <%!   
                
                String url="jdbc:mysql://localhost:3306/supercar_rental_system?zeroDateTimeBehavior=convertToNull";
              Connection DB;
              ResultSet RS;
              ResultSet RS1;
            %>
        
        
            <%    
                 try{
                 Class.forName("com.mysql.jdbc.Driver").newInstance();
                   DB=DriverManager.getConnection(url,"root","");
                    }
                 catch(ClassNotFoundException error){ 
            %>
            
                   <p> driver not found</p>
               
            <%     }   
                 catch(SQLException error1){
            %>
            <p> cannot connect to database </p>
            <% } %>
            
            
            
             <%
         
         try{
             
             if(AdminModifyCode==2){
                 PreparedStatement P;
            String Aquery="DELETE FROM ADD_FEAT WHERE CAR_ID=?;";
            P=DB.prepareStatement(Aquery);  
            P.setInt(1,carid);
           
            rowsUpdated1=P.executeUpdate();
            P.close();
            PreparedStatement Q;
            String Bquery="DELETE FROM BROCHURE WHERE CAR_ID=?;";
            Q=DB.prepareStatement(Bquery);  
            Q.setInt(1,carid);
           
            rowsUpdated2=Q.executeUpdate();
            Q.close();
            if((rowsUpdated1*rowsUpdated2)!=0){
             %><div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Car Deleted Suceesfully!!</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="1" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div> 
                <%
             }
             
             else{
             %><div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Error Deleting The car</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="1" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div><%
             }
            
                 
             }
            
else{
            PreparedStatement P;
            String Aquery="SELECT * FROM ADD_FEAT WHERE CAR_ID=?;";
            P=DB.prepareStatement(Aquery);  
            P.setInt(1,carid);
            RS=P.executeQuery();
            boolean r=RS.next();
            
            int carId=RS.getInt(1);
            String engineType=RS.getString(2);
            String gearType=RS.getString(3);
            String CC=RS.getString(4);
            String BHP=RS.getString(5);
            String musicSystem=RS.getString(6);
            String airbags=RS.getString(7);
            int topSpeed=RS.getInt(8);
            int acceleration=RS.getInt(9);
            int luxRating=RS.getInt(10);
            int safRating=RS.getInt(11);
            P.close();

            PreparedStatement Q;
            String Bquery="SELECT * FROM BROCHURE WHERE CAR_ID=?;";
            Q=DB.prepareStatement(Bquery);  
            Q.setInt(1,carid);
            RS1=Q.executeQuery();
            boolean r1=RS1.next();
            
            int carId1=RS1.getInt(1);
            String carName=RS1.getString(2);
            int seats=RS1.getInt(3);
            int price=RS1.getInt(4);
            int userRating=RS1.getInt(5);
            Q.close();

%>

   
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

<form action="8.1-modCarApply.jsp">
  <div class="container">
      <h1><center><font color="white">Update the Details</center></h1>
     
    <hr>
<center><table cellspacing="10">
<tr>
     <th> <center><label for="cid"><b>Car ID</b></label></th>
     <th><input type="text" placeholder="CID" name="CARID" required value="<%=carId%>"></center><br> </th>
</tr>
<tr>
  <th> <center><label for="CNAME"><b>Car Name</b></label></th>
  <th><input type="text" placeholder="NAME" name="CARNAME" required value="<%=carName%>">></center><br> </th>
</tr>
<tr>
  <th> <center><label for="SEATS"><b>Seats</b></label></th>
  <th><input type="text" placeholder="4" name="SEATS" required value="<%=seats %>">></center><br> </th>
</tr>
<tr>
  <th> <center><label for="PRICE"><b>Price</b></label></th>
  <th><input type="text" placeholder="Rs." name="PRICE" required value="<%=price %>">></center><br> </th>
</tr>
<tr>
  <th> <center><label for="UR"><b>User Rating</b></label></th>
  <th><input type="text" placeholder="4" name="USERRATING" required value="<%=userRating %>">></center><br> </th>
</tr>
<tr>
     <th><center><label for="etype"><b>Engine Type</b></label> </th>
     <th> <input type="text" placeholder="E-Type" name="ENGINETYPE" required value="<%= engineType%>">></center><br> </th>
</tr>
<tr>
     <th> <center><label for="gear"><b>Gear Type</b></label> </th>
     <th> <input type="text" placeholder="G-Type" name="GEARTYPE" required value="<%=gearType %>">></center><br> </th>
</tr>
<tr>
     <th>  <center> <label for="cc"><b>CC</b></label></th>
     <th> <input type="varchar" placeholder="CC" name="CC" required value="<%=CC %>"></center><br></th>
</tr>
<tr>
     <th> <center> <label for="bhp"><b>BHP</b></label></th>
     <th> <input type="integer" placeholder="bhp" name="BHP" required value="<%= BHP%>"></center><br></th>
</tr>
<tr>
     <th> <center> <label for="ms"><b>Music System</b></label></th>
     <th> <input type="text" placeholder="Music" name="MUSICSYSTEM" required value="<%=musicSystem %>"></center><br></th>
</tr>
<tr>
     <th> <center><label for="air"><b>Airbags</b></label> </th>
     <th> <input type="text" placeholder="Airbags" name="AIRBAGS" required value="<%=airbags%>"></center></th>
</tr>
<tr>
     <th> <center><label for="tp"><b>TOP SPEED</b></label> </th>
     <th> <input type="text" placeholder="Speed" name="TOPSPEED" required value="<%=topSpeed %>"></center></th>
</tr>
<tr>
     <th> <center><label for="acc"><b>Accelaration</b></label> </th>
     <th> <input type="text" placeholder="0-100kmph" name="ACCELERATION" required value="<%=acceleration %>"></center></th>
</tr>
<tr>
     <th> <center><label for="lux"><b>Luxury Rating</b></label> </th>
     <th> <input type="text" placeholder="0-5" name="LUXRATING" required value="<%=luxRating%>"></center></th>
</tr>
<tr>
     <th> <center><label for="saf"><b>Safety Rating</b></label> </th>
     <th> <input type="text" placeholder="0-5" name="SAFRATING" required value="<%=safRating %>"></center></th>
</tr>

</table>   
</center>           
                
    <hr>
    

    <center><button type="submit" class="uptbtn" >Update Car
    
        </button></center>
  </div>
  
  
</form>



<% 
    

}

%>



<%
                    
        }
        catch(SQLException error){
           %><div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">An Error Occured</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="1" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div><%
        }

%>
            
           
             
        
        
    </body>
</html>
