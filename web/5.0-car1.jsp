<%-- 
    Document   : cars
    Created on : 19 Nov, 2019, 12:10:17 AM
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
    th, td {
  padding: 6px;
  text-align: center;    
}
    body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("2.jpg");
}

.topnav {
  overflow: hidden;
  background-color: #333;
}


.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 13px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2c7d2f;
  color: white;
}
    body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
    }
    .float-img{
        float:left;
        clear:left;
        margin-right: 350px;
        margin-bottom: 30px;
        padding: 2px;
        
        
    }
    .bottom-right {
  position: absolute;
  bottom: 190px;
  right: 300px;
}
  .bottom-left {
  position: absolute;
  bottom: 380px;
  right: 300px;
}

/* additional feature */

.right{
    position: absolute;
    bottom: 34px;
    right: -20px;
    
}

.left{
    position: absolute;
    bottom: 34px;
    right: -20px;
    
}


    
    .container {
  padding: 50px;
  
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
    }
    hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
    .bookbtn {
  background-color: #4CAF50;
  color: white;
  padding: 11px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
  
}
.bookbtn:hover {
  opacity: 1;
}

.addbtn {
  background-color: #4CAF50;
  color: white;
  padding: 10px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}
.addbtn:hover {
  opacity: 1;
}
 
table.d {
  table-layout: fixed;
  width: 60%;  
}

.center{
    
    position: absolute;
   top: 85%;
   left: 40%;
   transform: translate(-50%, -50%);
}
.addcarbtn {
  background-color: #4CAF50;
  color: white;
  padding: 15px 10px;
  margin: 8px 0;
  border: none;
  
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}
.addcarbtn:hover {
  opacity: 1;
}

.topnav .login-container {
  float: left;
}
.topnav .login-container button {
  float: left;
  padding: 10px 16px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: #2c7d2f;
  color: white;
  font-size: 17px;
  border: none;
  cursor: pointer;
}
.topnav .login-container1 {
  float: right;
}
.topnav .login-container1 button {
  float: left;
  padding: 10px 16px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: #2c7d2f;
  color: white;
  font-size: 17px;
  border: none;
  cursor: pointer;
}
     
</style>
</head>


<body>
        
        <%
            int code=Integer.parseInt(request.getParameter("code"));
                int Admincode=Integer.parseInt(request.getParameter("Admincode"));
                int a;
        %>
      
            <%!   
                
                String url="jdbc:mysql://localhost:3306/supercar_rental_system?zeroDateTimeBehavior=convertToNull";
              Connection DB;
              ResultSet RS;
              Statement DR;
              String err="SQL Error";
              int carid,seats,price,userRating;
              String carName,image;
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
         //---------------------------------------------------------   %>
            <% 
               int start,end;
                
                if(code==1){
                   start=1001;
                   end=1002;
                }
                else if(code==2){
                    start=2001;
                    end=2002;
                }  
                else if(code==3){
                    start=3001;
                    end=3002;
                }
                else if(code==4){
                    start=4001;
                    end=4002;
                } 
                else{
                    start=5001;
                    end=5002;
                }
                %>
    <% //------------------------------------------------------------------
        try{
        
%><div class="topnav">
    <div class="login-container">
    <form action="4-brochure.jsp">
        <input type="hidden" name="Admincode" value="<%=Admincode%>">
      <button type="submit">Home</button>
    </form>
  </div>
  
   <div class="login-container1">
    <form action="2.1-LOGIN.jsp">
        <input type="hidden" name="Admincode" value="<%=Admincode%>">
        <input type="hidden" name="logOut" value="1">
      <button type="submit">Log Out</button>
    </form>
  </div>
      
      <div class="login-container1">
    <form action="aboutUs.jsp">
        <input type="hidden" name="Admincode" value="<%=Admincode%>">
      <button type="submit">About Us</button>
    </form>
  </div>
    </div>
      
      
            <div class="container">
       <center> <h1><font color="white">Lamborghini Cars</h1></center>
      <hr>
      <%
            
            for(int i=start;i!=0;i++){
            PreparedStatement P;
            String query="SELECT * FROM BROCHURE WHERE CAR_ID=?;";
            P=DB.prepareStatement(query);  
            P.setInt(1,i);
            RS=P.executeQuery();
            boolean r=RS.next();
            
            carid=RS.getInt(1);
carName=RS.getString(2);
seats=RS.getInt(3);
price=RS.getInt(4);
userRating=RS.getInt(5);
image=RS.getString(6);
            P.close();
            
%>

<br>   
<center><table border="0"  class="d">  <%-- frame="box" --%> 
 
  <tr>
    <th width="50%" rowspan="6"><image src="<%=image%>" width:="150px" height="160px" alt="centenario" title="no1" padding:2px; > </th>
    <th colspan="2" style="text-align:left">Name : <%=carName%></th>
    
  </tr>
  <tr>
    <th  colspan="2" style="text-align:left">Car Id : <%=carid %></th>
    
  </tr>
  <tr>
    <th colspan="2" style="text-align:left">Seats : <%=seats %></th>
   
  </tr>
  <tr>
    <th colspan="2" style="text-align:left">Price : <%=price%></th>
    
  </tr>
  <tr>
    <th colspan="2"  style="text-align:left">User Rating : <%=userRating%></th>
    
  </tr>
  
   <% if(Admincode==0){%>
  <tr>
    <td width="20%" style="text-align:left"><form action="6.0-book.jsp" method="get">
    <input type="hidden" name="carid" value="<%=carid%>" >
    <input type="hidden" name="code" value="<%=code%>">
    <input type="hidden" name="Admincode" value="<%=Admincode%>">
    <button type="submit" class="bookbtn" >Book
               </button>
</form>
    </td>
    <td width="20%" style="text-align:left">

    <form action="7.0-addFeat.jsp" method="get">
    <input type="hidden" name="carid" value="<%=carid%>" >
    <input type="hidden" name="code" value="<%=code%>">
    <input type="hidden" name="Admincode" value="<%=Admincode%>">
    <button type="submit" class="bookbtn" >Details
               </button>
    
</form>
    </td>
    
    
  </tr>
  </table></center>
    <hr>
   <% }if(Admincode==1){%>
  
  
  <tr>
    <th width="20%" style="text-align:left"><form action="8.0-modDelCar-Confirm.jsp" method="get">
    <input type="hidden" name="code" value="<%=code%>">
    <input type="hidden" name="carid" value="<%=carid%>" >
    <input type="hidden" name="AdminModifyCode" value="1">
    <button type="submit" class="bookbtn" >Update
               </button>
        </form></th>
        <td width="20%" style="text-align:left"><form action="deleteConfirm.jsp" method="get">
    <input type="hidden" name="code" value="<%=code%>">
    <input type="hidden" name="carid" value="<%=carid%>" >
    <input type="hidden" name="AdminModifyCode" value="2">
    <button type="submit" class="bookbtn">Delete
               </button>
     </form></td>
    
  </tr>
    </table></center>
    <hr>
    
<%}
        
        
                    }
        }
        catch(SQLException error){
           
        }


if(Admincode==1){
%>
<a href="9.0-AddCar.jsp"><center><button type="submit" class="addcarbtn">Add Car
        </button></center></a>

<% }
%>


<br>
</body>
</html>
                
           
            
   