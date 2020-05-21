<%-- 
    Document   : dbDemo
    Created on : 24 Nov, 2019, 12:07:13 PM
    Author     : Dheeraj Gk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>database connectivity</title>
    </head>
    <body>
        
        
            <%!    
                String url="jdbc:mysql://localhost:3306/supercar_rental_system?zeroDateTimeBehavior=convertToNull";
              Connection DB=null;
              ResultSet RS;
              Statement DR;
              String carname;
              int seats,price,userrating,carid;
              
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
            
            
             try{
                    String Rquery ="SELECT * FROM BROCHURE";
                    
                    DR=DB.createStatement();
                    RS=DR.executeQuery(Rquery);
                    }
            catch(SQLException error){
            %> <p>second s-q-l error</p> <%
                }

             boolean r=RS.next();
             try{
             do{
carid=RS.getInt(1);
carname=RS.getString(2);
seats=RS.getInt(3);
price=RS.getInt(4);
userrating=RS.getInt(5);
}while(RS.next());
DR.close();
}
catch(SQLException er){
%><p>execution error</p> <% } %>
<%=carid %><br>
<%=carname %><br>
<%=seats%><br>
<%=price %><br>
<%=userrating %><br>


}









--------------------------------


 //  LOGIN
                else if(code==2){
                
                 String Lphone=request.getParameter("Lphone");
                 String Lpassword=request.getParameter("Lpassword");
                try{
                    
                    String Lquery ="SELECT PASSWORD FROM USER_REG WHERE PHONE=?";
                    PreparedStatement PL=DB.prepareStatement(Lquery);
                    PL.setString(1,Lphone);
                    
                    RS=PL.executeQuery();
                    
                }
                catch(Exception error){
                    
                }
                
                 boolean LRecords=RS.next();
                 if(!LRecords){  
                  
            %>  <p>LOGIN FAILED</p>  <%
                 }

                 try{
                      String pass=RS.getString(1);
                      
                      if(pass.equals(Lpassword)){
                      %> <a href="brochure.jsp">
                          <p>LOGIN SUCCESSFUL </p>  
                          <button>OK</button>
                      </a> <br>   <%
                      }
                   else{
                                   %>
                       <a href="HOME.jsp">
                          <p>LOGIN FAILED </p>  
                          <button>OK</button>
                       </a> <br>  <% 
                       }
                    }
                     catch(Exception error){}
                              }
            
            
            
              //  ADMIN LOGIN
                else{
                 String Aphone=request.getParameter("Aphone");
                 String Apassword=request.getParameter("Apassword");
                try{
                    
                    String Aquery ="SELECT PASSWORD FROM ADMIN WHERE PHONE=?";
                    PreparedStatement PA=DB.prepareStatement(Aquery);
                    PA.setString(1,Aphone);
                    
                    RS=PA.executeQuery();
                    
                }
                catch(Exception error){
                    
                }
                
                 boolean ARecords=RS.next();
                 if(!ARecords){  
                  
            %>  <p>LOGIN FAILED</p>  <%
                 }

                 try{
                      String pass=RS.getString(1);
                      
                      if(pass.equals(Apassword)){
                      %> <a href="brochure.jsp">
                          <p>LOGIN SUCCESSFUL </p>  
                          <button>OK</button>
                      </a> <br>   <%
                      }
                   else{
                                   %>
                       <a href="HOME.jsp">
                          <p>LOGIN FAILED </p>  
                          <button>OK</button>
                       </a> <br>  <% 
                       }
                    }
                     catch(Exception error){}
}%>
             
                    
