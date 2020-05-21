<%-- 
    Document   : 8.1-modDelCarAppky
    Created on : 27 Nov, 2019, 10:26:09 PM
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
            int CARID =Integer.parseInt(request.getParameter("CARID"));
            String CARNAME =request.getParameter("CARNAME");
            int SEATS=Integer.parseInt(request.getParameter("SEATS"));
            int PRICE=Integer.parseInt(request.getParameter("PRICE"));
            int USERRATING=Integer.parseInt(request.getParameter("USERRATING"));
            String ENGINETYPE=request.getParameter("ENGINETYPE");
            String GEARTYPE=request.getParameter("GEARTYPE");
            String CC=request.getParameter("CC");
            String BHP=request.getParameter("BHP");
            String MUSICSYSTEM=request.getParameter("MUSICSYSTEM");
            String AIRBAGS=request.getParameter("AIRBAGS");
            int TOPSPEED=Integer.parseInt(request.getParameter("TOPSPEED"));
            int ACCELERATION=Integer.parseInt(request.getParameter("ACCELERATION"));
            int LUXRATING=Integer.parseInt(request.getParameter("LUXRATING"));
            int SAFRATING=Integer.parseInt(request.getParameter("SAFRATING"));
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
               
                    String Rquery ="UPDATE BROCHURE SET CAR_NAME=?,SEATS=?,PRICE=?,USER_RATING=? WHERE CAR_ID=?;";
                    PreparedStatement p=DB.prepareStatement(Rquery);
                    p.setString(1,CARNAME);
                    p.setInt(2,SEATS);
                    p.setInt(3,PRICE);
                    p.setInt(4,USERRATING);
                    p.setInt(5,CARID);
                    rowsUpdated1=p.executeUpdate();
                    p.close();
                    
                    String R1query ="UPDATE ADD_FEAT SET ENGINE_TYPE=?,GEAR_TYPE=?,CC=?,BHP=?,MUSIC_SYSTEM=?,AIRBAGS=?,TOP_SPEED=?,ACCELERATION=?,LUXURY_RATING=?,SAFTY_RATING=? WHERE CAR_ID=?;";
                    PreparedStatement q=DB.prepareStatement(R1query);
                    q.setString(1,ENGINETYPE);
                    q.setString(2,GEARTYPE);
                    q.setString(3,CC);
                    q.setString(4,BHP);
                    q.setString(5,MUSICSYSTEM);
                    q.setString(6,AIRBAGS);
                    q.setInt(7,TOPSPEED);
                    q.setInt(8,ACCELERATION);
                    q.setInt(9,LUXRATING);
                    q.setInt(10,SAFRATING);
                    q.setInt(11,CARID);
                    rowsUpdated2=q.executeUpdate();
                    q.close();
                    
                    if((rowsUpdated1*rowsUpdated2)!=0){
            %>        <div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Car Information Updated Suceesfully!!</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="1" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div>                       
            <%         } 

                    else{
                   %> <div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Error Updating Car Information</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="1" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div>
                   <% }
                    } catch(Exception error){
                   
            %>
            <p>ERROR UPDATING CAR INFORMATION</p>
            <form method="get" action="4-brochure.jsp" >
                
                    <input type="hidden" name="Admincode" value="1" >
                    <input type="submit"  value="OK" >
                  </form> <br>
            <%  }  %>
            
            
            
        
    </body>
</html>
