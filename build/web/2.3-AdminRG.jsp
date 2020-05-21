<%-- 
    Document   : 2.3-AdminRG
    Created on : 24 Nov, 2019, 5:31:31 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN REGISTRATION</title>
    </head>
    <body>
         <h1>REGISTRATION</h1>
        
        <form action="3.3-AdminRGDB.jsp" method="post">
           <table border="1">
            <thead>
                <tr>
                    <th>NAME</th>
                    <td> <input type="text" name="ARname" value=""></td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>EMAIL</th>
                    <td><input type="text" name="ARemail" value=""></td>
                </tr>
                <tr>
                    <th>PHONE NUMBER</th>
                    <td><input type="text" name="ARphone" value=""></td>
                </tr>
                <tr>
                    <th>PASSWORD</th>
                    <td><input type="password" name="ARpassword" value=""></td>
                </tr>
               
            </tbody>
        </table>
            <input type="submit" value="REGISTER">
        </form>
        
        
        
        <br>
        <a href="2.2-ADMIN.jsp">    
          <button>BACK</button>
        </a> <br>
        <a href="1-home.jsp">    
          <button>HOME</button>
        </a> 
    </body>
</html>
