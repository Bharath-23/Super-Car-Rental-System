<%-- 
    Document   : home
    Created on : 18 Nov, 2019, 9:24:21 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
    </head>
    <body>
        
        <%
             session.invalidate();
         %>  
         
        
        <a href="2.1-LOGIN.jsp">    
          <button>LOGIN</button>
        </a> </br>
        <a href="2.0-REGISTRATION.jsp">
          <button>REGISTER</button>
        </a> </br>
        <a href="2.2-ADMIN.jsp">
          <button>ADMIN</button>
        </a> <br>
        
        
        
    </body>
</html>
