<%-- 
    Document   : 3.2-AdminDB
    Created on : 24 Nov, 2019, 4:05:55 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login DB</title>
    </head>
    <body>
        
        
         <%!   
                String pass;
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
                String Aphone=request.getParameter("Aphone");
            
                 String Apassword=request.getParameter("Apassword");
               
                try{
                    
                    String Aquery ="SELECT PASSWORD FROM ADMIN WHERE PHONE=?";
                    PreparedStatement PL=DB.prepareStatement(Aquery);
                    PL.setString(1,Aphone);
                    
                    RS=PL.executeQuery();
                    
                    }
                catch(Exception error){}  
                
             boolean r=RS.next();
            try{
             do{
              pass=RS.getString(1);
              
              }while(RS.next());
           

            if(pass.equals(Apassword)){
                
 
 
 session.setAttribute("sessionId",Aphone);
 String url="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/4-brochure.jsp?Admincode=1";
   response.sendRedirect(url);
    
        }  
else{

 String url="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/2.2-ADMIN.jsp?AlogOut=1";
   response.sendRedirect(url);
} }

catch(SQLException error){
 String url="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/2.2-ADMIN.jsp?AlogOut=2";
   response.sendRedirect(url);}
%> 



                    
                
  

    </body>
</html>
