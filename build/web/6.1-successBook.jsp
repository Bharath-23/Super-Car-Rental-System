<%-- 
    Document   : 6.1-successBook
    Created on : 26 Nov, 2019, 12:43:44 PM
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
</style>
</head>
    <body>
        
        <%
            int carId=Integer.parseInt(request.getParameter("carId"));
            int Admincode=Integer.parseInt(request.getParameter("Admincode"));
              String Location=request.getParameter("location");
              String date=request.getParameter("date");
              String time=request.getParameter("time");
              String phone=(String)session.getAttribute("sessionId");
        %>      
        
         <%!   
                
                String url="jdbc:mysql://localhost:3306/supercar_rental_system?zeroDateTimeBehavior=convertToNull";
              Connection DB;
              ResultSet RS;
              
              String err="SQL Error";
              
              
             
            %>
        
        
            <%
              
              int rowsUpdated=0;
              
              
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
             String query="INSERT INTO BOOKING VALUES(?,?,?,?,?);";
             PreparedStatement P=DB.prepareStatement(query);
             P.setString(1,phone);
             P.setInt(2,carId);
             P.setString(3,Location);
             P.setString(4,date);
             P.setString(5,time);
             rowsUpdated=P.executeUpdate();
             P.close();
             
              if(rowsUpdated!=0){
            %> 
            <div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Booking Successful</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="0" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div><%
             }
             
           else{
            %><div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Error Booking The Car</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="0" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div>
        <% }
           }
           
           
             catch(SQLException error){
                 %><div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">The Car is Unavailable </h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="0" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div><%
             }
         %>
         
         
        
        
        
        
    </body>
</html>
