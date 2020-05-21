<%-- 
    Document   : database_conn
    Created on : 18 Nov, 2019, 4:36:10 PM
    Author     : Dheeraj Gk            a
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
               
                

//REGESTRATION
                String fname=request.getParameter("firstname");
                 String lname=request.getParameter("lastname");
                 String gender=request.getParameter("gender");
                 String dlno=request.getParameter("dlno");
                 String email=request.getParameter("email");
                 String Rphone=request.getParameter("Rphone");
                 String Rpassword=request.getParameter("Rpassword");
                 int rowsUpdated=0;
                 %>

                
                <%  
                    try{
               
                    String Rquery ="INSERT INTO USER_REG VALUES(?,?,?,?,?,?,?)";
                    PreparedStatement p=DB.prepareStatement(Rquery);
                    p.setString(1,fname);
                    p.setString(2,lname);
                    p.setString(3,gender);
                    p.setString(4,dlno);
                    p.setString(5,email);
                    p.setString(6,Rphone);
                    p.setString(7,Rpassword);
                    rowsUpdated=p.executeUpdate();
                    p.close();
                    if(rowsUpdated!=0){
                
                
                
                session.setAttribute("sessionId",Rphone);

            %>        <div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Registration Successful</h1>
    <form method="get" action="4-brochure.jsp" >
                    <input type="hidden" name="Admincode" value="0" >
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div>
                       
            <%         }  
                    } catch(Exception error){
                   
            %>
           <div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Registration Error</h1>
    <form method="get" action="2.0-REGISTRATION.jsp" >
                    
                    
                  
    <button type="submit">OK</button>
    </form>
    <hr>
  </div>
    
</div>
            <%  }  %>
            
            
             
            
            
       
        
       
 
             


            
        
        
        
    </body>
</html>
