<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Login</title>
<style type="text/css">
body{
	background-image:url("images/h.jpg") !important;
    background-size:cover;
    font-family: sans-serif;
     
  }</style>
<link rel="stylesheet" href="Login.css">

</head>
<body>
<div class="container">
<form action="elgn" method="post">
<img src="images/icon.jpeg" alt="icon" id="img">
<h3>Employee Login</h3>
<% 
String err=(String)request.getAttribute("error");%>
<%if(err!=null){ %>
<div id="error-message"><%=err%></div>
<%}%>
<br>
<input type="number" placeholder="Employee Id" id="text" name="id">
<br><br>
<input type="number" placeholder="Password" id="text" name="pwd">
<br><br>
<div >
<a href="empForgot.jsp" id="link">Forgot password
</a></div>
<input type="submit" value="Login" id="btn">
</form>
</div>

</body>
</html>