<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="Login.css">
<style type="text/css">
#text{
    text-align: center;
    border: 2px solid #3498db;
    padding: 14px 10px;
    width: 200px;
    color: grey;
    border-radius: 25px;
    transition: 0.25s;
    }
 #text:hover{
    background-color:#2ecc71;
    width:250px;
    }
</style>
</head>
<body >

<div class="container">
<form action="lgn" method="post">
<img src="images/icon.jpeg" alt="icon" id="img">

<%
String err=(String)request.getAttribute("error");%>
<%if(err!=null){ %>
<div id="error-message"><%=err%></div>
<%
}%>
<br><br>
<input type="text" placeholder="Account Number" id="text" name="nm">
<br><br>
<input type="number" placeholder="Pin" id="text" name="pwd">
<br><br>
<div >
<a href="forgotpass.jsp" id="link">Forgot password
</a></div>
<input type="submit" value="Login" id="btn">
</form>
</div>
<div class="container-2">
<a href="EmpLogin.jsp"  id="el">Employee Login</a>

<a href="#" id="cpwd">Create password</a>
</div>
</body>
</html>