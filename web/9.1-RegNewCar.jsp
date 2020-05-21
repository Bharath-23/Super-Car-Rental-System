<%-- 
    Document   : 9.1-RegNewCar
    Created on : 26 Nov, 2019, 11:08:46 PM
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
       
        
        
        
        <%!   
                
                String url="jdbc:mysql://localhost:3306/supercar_rental_system?zeroDateTimeBehavior=convertToNull";
              Connection DB;
              ResultSet RS;
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
                int carid=Integer.parseInt(request.getParameter("carid"));
                String carName=request.getParameter("carName");
                int seats=Integer.parseInt(request.getParameter("seats"));
                int price=Integer.parseInt(request.getParameter("price"));
                int userRating=Integer.parseInt(request.getParameter("userRating"));
                String engineType=request.getParameter("engineType");
                String gearType=request.getParameter("gearType");
                String CC=request.getParameter("CC");
                String BHP=request.getParameter("BHP");
                String musicSystem=request.getParameter("musicSystem");
                String airbags=request.getParameter("airbags");
                int topSpeed=Integer.parseInt(request.getParameter("topSpeed"));
                int acceleration=Integer.parseInt(request.getParameter("acceleration"));
                int luxRating=Integer.parseInt(request.getParameter("luxRating"));
                int safRating=Integer.parseInt(request.getParameter("safRating"));
                 String image=request.getParameter("image");
                int rowsUpdated=0;
            %>    
            
            
            <%  
                    try{
               
                    String Rquery ="INSERT INTO BROCHURE VALUES(?,?,?,?,?,?);";
                    PreparedStatement p=DB.prepareStatement(Rquery);
                    p.setInt(1,carid);
                    p.setString(2,carName);
                    p.setInt(3,seats);
                    p.setInt(4,price);
                    p.setInt(5,userRating);
                    p.setString(6,image);
                    
                    rowsUpdated=p.executeUpdate();
                    p.close();
                    String Squery ="INSERT INTO ADD_FEAT VALUES(?,?,?,?,?,?,?,?,?,?,?);";
                    PreparedStatement q=DB.prepareStatement(Squery);
                    q.setInt(1,carid);
                    q.setString(2, engineType);
                    q.setString(3,gearType);
                    q.setString(4,CC);
                    q.setString(5,BHP);
                    q.setString(6, musicSystem);
                    q.setString(7,airbags);
                    q.setInt(8, topSpeed);
                    q.setInt(9,acceleration);
                    q.setInt(10,luxRating);
                    q.setInt(11,safRating);
                    rowsUpdated=q.executeUpdate();
                    q.close();
                    if(rowsUpdated!=0){
            %><div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Car Added Suceesfully!!</h1>
    <form action="4-brochure.jsp" method="get">
    <button type="submit">OK</button>        
            
    <input type="hidden" name="Admincode" value="1" >
    
    
</form> 
    <hr>
  </div>
    
</div>

<% }
else{
%><div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Error Adding The Car</h1>
    <form action="4-brochure.jsp" method="get">
    <button type="submit">OK</button>        
            
    <input type="hidden" name="Admincode" value="1" >
    
    
</form> 
    <hr>
  </div>
    
</div>
        
                       
            <%         }  
                    } catch(Exception error){
                   
            %>
            <p> SQL REGISTER ERROR <%=error%> </p>
            <%  }  %>
            
            
        
        
        
        
        
    </body>
</html>
