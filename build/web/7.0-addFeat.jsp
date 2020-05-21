<%-- 
    Document   : 7.0-addFeat
    Created on : 26 Nov, 2019, 12:37:29 PM
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
    th, td {
  padding: 6px;
  text-align: center;    
}
    body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("2.jpg");
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
    body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
    }
    .float-img{
        float:left;
        clear:left;
        margin-right: 350px;
        margin-bottom: 30px;
        padding: 2px;
        
        
    }
    .bottom-right {
  position: absolute;
  bottom: 190px;
  right: 300px;
}
  .bottom-left {
  position: absolute;
  bottom: 380px;
  right: 300px;
}

/* additional feature */

.right{
    position: absolute;
    bottom: 34px;
    right: -20px;
    
}

.left{
    position: absolute;
    bottom: 34px;
    right: -20px;
    
}


    
    .container {
  padding: 50px;
  
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
    }
    hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
    .bookbtn {
  background-color: #4CAF50;
  color: white;
  padding: 11px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
  
}
.bookbtn:hover {
  opacity: 1;
}

.addbtn {
  background-color: #4CAF50;
  color: white;
  padding: 10px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}
.addbtn:hover {
  opacity: 1;
}
 
table.d {
  table-layout: fixed;
  width: 60%;  
}

.center{
    
    position: absolute;
   top: 85%;
   left: 40%;
   transform: translate(-50%, -50%);
}
.addcarbtn {
  background-color: #4CAF50;
  color: white;
  padding: 15px 10px;
  margin: 8px 0;
  border: none;
  
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}
.addcarbtn:hover {
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
.topnav .login-container1 {
  float: right;
}
.topnav .login-container1 button {
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
     
</style>
</head>
    <body>
        
        <% 
         int carid=Integer.parseInt(request.getParameter("carid"));
         int code=Integer.parseInt(request.getParameter("code"));
         int Admincode=Integer.parseInt(request.getParameter("Admincode"));
    %>
     
        <div class="topnav">
    <div class="login-container">
    <form action="5.0-car1.jsp" method="get">
    <input type="hidden" name="code" value="<%=code%>" >
    <input type="hidden" name="Admincode" value="<%=Admincode%>" >
    <button type="submit">Back</button>
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
        
        
        
    <br><center> <h1><font color="white">Additional Features</h1></center><hr>
        
        
    
    <%!   
                
                String url="jdbc:mysql://localhost:3306/supercar_rental_system?zeroDateTimeBehavior=convertToNull";
              Connection DB;
              ResultSet RS;
              Statement DR;
              String err="SQL Error";
              
             
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
            
      
            
            <% } 
         //---------------------------------------------------------   %>
    <%
         
         try{
            
            
            PreparedStatement P;
            String query="SELECT * FROM ADD_FEAT WHERE CAR_ID=?;";
            P=DB.prepareStatement(query);  
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
            
%>


<center><table>
    
    <tr>
        <th>CAR-ID :</th>
        <th><%=carId%></th>
    </tr>
    
    <tr>
        <th>ENGINE TYPE :</th>
        <th><%=engineType%></th>
    </tr>
    
    <tr>
        <th>GEAR TYPE :</th>
        <th><%=gearType%></th>
    </tr>
    
    <tr>
        <th>CC :</th>
        <th><%=CC%></th>
    </tr>
    
    <tr>
        <th>BHP :</th>
        <th><%=BHP%></th>
    </tr>
    
    <tr>
        <th>MUSIC SYSTEM :</th>
        <th><%=musicSystem%></th>
    </tr>
    
    <tr>
        <th>AIRBAGs :</th>
        <th><%=airbags%></th>
    </tr>
    
    <tr>
        <th>TOP SPEED :</th>
        <th><%=topSpeed%></th>
    </tr>
    
    <tr>
        <th>ACCELERATION :</th>
        <th><%=acceleration%></th>
    </tr>
    
    <tr>
        <th>LUXURY RATING :</th>
        <th><%=luxRating%></th>
    </tr>
    
    <tr>
        <th>SAFETY RATING :</th>
        <th><%=safRating%></th>
    </tr>
    
    </table></center>

<%
                    
        }
        catch(SQLException error){
           %><%=err%><%
        }

%>


    </body>
</html>
