<%-- 
    Document   : 3.3-AdminRGDB
    Created on : 24 Nov, 2019, 5:31:11 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN REG DB</title>
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
            
            
            
            <% String name=request.getParameter("ARname");
                 
                 String email=request.getParameter("ARemail");
                 String ARphone=request.getParameter("ARphone");
                 String ARpassword=request.getParameter("ARpassword");
                 int rowsUpdated=0;
                 %>
                 <p><%=name%></p><br>
                 
                 <p><%=email%></p><br>
                 <p><%=ARphone%></p><br>
                 
                 
                <%  try{
               
                    String Rquery ="INSERT INTO ADMIN VALUES(?,?,?,?)";
                    PreparedStatement p=DB.prepareStatement(Rquery);
                    p.setString(1,name);
                    
                    p.setString(2,email);
                    p.setString(3,ARphone);
                    p.setString(4,ARpassword);
                    rowsUpdated=p.executeUpdate();
                    p.close();
                    if(rowsUpdated!=0){
                     
                
                
                session.setAttribute("sessionId",ARphone);



            %>        <form method="get" action="4-brochure.jsp" >
                <p>REGISTRATION SUCCESSFUL</p>
                    <input type="hidden" name="Admincode" value="1" >
                    <input type="submit"  value="OK" >
                  </form> <br>
                       
            <%         }  
                    } catch(Exception error){
                   
            %>
            <p> SQL REGISTER ERROR </p>
            <a href="2.0-REGISTRATION.jsp">    
          <button>OK</button>
        </a> <br>
            <%  }  %>
            
            
             
            
            
       
        
       
 
             


            
    </body>
</html>
