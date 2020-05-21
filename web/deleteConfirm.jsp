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
    <%  int AdminModifyCode=Integer.parseInt(request.getParameter("AdminModifyCode"));
             int carid=Integer.parseInt(request.getParameter("carid"));
             int code=Integer.parseInt(request.getParameter("code")); %>
<div class="hero-image">
  <div class="hero-text">
      <hr>
    <h1 style="font-size:50px">Do You Really Want TO Delete The Car</h1>
    <center><table><tr><th><form action="8.0-modDelCar-Confirm.jsp" method="post">
        <input type="hidden" name="code" value="<%=code%>">
    <input type="hidden" name="carid" value="<%=carid%>" >
    <input type="hidden" name="AdminModifyCode" value="2">
    <button type="submit">Yes</button>
                </form></th>
                <th>
                  <form action="5.0-car1.jsp" method="post">
        <input type="hidden" name="code" value="<%=code%>">
    <input type="hidden" name="Admincode" value="1">
    <input type="hidden" name="AdminModifyCode" value="2">
    <button type="submit">No</button>  
                </th>
            </tr></table></center>
    
    <hr>
  </div>
    
</div>



</body>
</html>
