<%-- 
    Document   : 3.1LoginDB
    Created on : 24 Nov, 2019, 4:05:35 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login DB</title>
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
                String Lphone=request.getParameter("Lphone");
            
                 String Lpassword=request.getParameter("Lpassword");
               
                try{
                    
                    String Lquery ="SELECT PASSWORD FROM USER_REG WHERE PHONE=?";
                    PreparedStatement PL=DB.prepareStatement(Lquery);
                    PL.setString(1,Lphone);
                    
                    RS=PL.executeQuery();
                    
                    }
                catch(Exception error){}  
                
             boolean r=RS.next();
            try{
             do{
              pass=RS.getString(1);
              
              }while(RS.next());
           

            if(pass.equals(Lpassword)){
                


session.setAttribute("sessionId",Lphone);


%> 
<% String url="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/4-brochure.jsp?Admincode=0";
   response.sendRedirect(url);%>
    <br>
       <% }  
else{
    String url="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/2.1-LOGIN.jsp?logOut=2";
   response.sendRedirect(url);
%> 
<% } }

catch(SQLException error){
String url="http://localhost:8080/SUPERCAR_RENTAL_SYSTEM/2.1-LOGIN.jsp?logOut=3";
   response.sendRedirect(url);
%> 
<%
}
%>


                    
                
    </body>
</html>
