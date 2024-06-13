<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transfer Amount</title>
<style>
body{
	background-image:url("images/m.jpg");
}

.io{
    position:relative;
	top:-8px;
   width:1528px;
   height:100px;
   background-color:#d9d9d9;
   }
   #one{
 width:100px;
 height:100px;
 }
 h2{
  display:inline;
  position:relative;
	top:-38px;
	left:700px;
	color:grey;
 }
 #two{
  position:relative;
	top:-24px;
	left:-8px;
	right:50%;
   width:1536px;
   height:50px;
   background-color:#739cb8;
 }
 #ctn{
  display:flex;
  list-style-type:none;
  width:1100px;
  gap:150px;
  top:20px;
  position:relative;
  left:300px;
  color:rgb(230, 255, 253);
 }
 #i{
 text-decoration:none;
 color:rgb(230, 255, 253);
 font-weight:bold;
 
 }
 #i:hover{
 text-decoration:none;
 color:rgb(230, 255, 253);
 font-weight:bold;
  text-decoration:underline;

 }
 #ii{
 text-decoration:none;
 color:#EABF3F;
 font-weight:bold;
 }
 footer{
 background-color:#d9d9d9;
 position:relative;
 width:1528px;
 top:509.5px;
 text-align:center;
 }
 img{
 position:relative;
 left:-8px;
 }
 #btn{
    color: white;
    text-decoration:none;
    margin: 20px ;
    text-align: center;
    padding: 5px ;
    border-radius: 5px;
    transition: 0.55s;
    cursor: pointer;
    border:3px solid #739cb8;
 background-color:#91B6CB);
 position:relative;
 right:-1050px;
 top:-45px;
  }
 
 #btn:hover {
    background: linear-gradient(#91B6CB 5%, #236A91  100%);
  }
  .contain{
    height:350px;
    width: 280px;
    padding: 30px;
    position: absolute;
    top: 25%;
    left: 40%;
    border-radius:20px;
    background: #191919;
    text-align: center;
    color:white;
    }
    .contain input{
     width:80%;
     height:100%;
     background:transparent;
     border:2px solid rgba(255,255,255,.2);
     border-radius:40px;
     padding:15px 15px;
    }
    .contain input::placeholder{
    color:#fff;
    }
    .contain h2{
    color:#fff;
     position: absolute;
    top: 5%;
    left: 30%;
    }
    .contain #pay{
    width:50%;
    height:45%;
    background:#fff;
   color:#333;
   cursor:pointer;
   font-size:13px;
   font-weight:600;
    
    }
    .ioo{
    width:550px;
    height:30px;
    color:green;
    background-color:white;
    border-radius:20px;
    position:relative;
    top:400px;
    text-align:center;
    padding:15px;
    left:450px;
    
    }
   .ioo h3{
   display:inline;
   }
   
</style>
</head>
<body>

<%@include file="header.jsp" %>

<div class="contain">
<form action="trans" method="post">
<br><br>
<h2>Easy Transfer</h2><br><br>
<input type="text" placeholder="Enter Beneficiary Account Number" name="ba"> <br><br>
<input type="text" placeholder="Enter Your Pin"name="sn"><br><br>
<input type="text" placeholder="Enter amount" name="amt"><br><br>
<input type="submit" value="PAY" id="pay">
</form>
</div>

<%String success=(String)request.getAttribute("str");%>
<%if(success!=null){ %>
<div class="ioo">
<h3><%=success%>
To see your account balance</h3>
<a href="Balance.jsp" id="bt">click here</a>
<%
}%>
</div>
</body>
</html>