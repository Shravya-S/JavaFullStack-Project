<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display</title>
<style type="text/css">
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

.ti{
    width:33.3%;
    margin:auto;
    font-size:20px;
    border:3px solid #B6D0E2 ;
    border-radius:5px;
    background:#ECFFDC;
    position:relative;
    top:150px;
    }
.ti th {
    color:#000;
    vertical-align:middle;
    height:50px;
    text-align:center;
    border:1px solid #B6D0E2; 
    color:#A95C68;
    }
.ti td {
    color:#000099;
    vertical-align:middle;
    text-align:left;
    border:1px solid #B6D0E2; 
    text-align:center;
    color:#899499;
    height:50px;
    }
   

</style>
</head>
<body>
<%@include file="header.jsp" %>
<table class="ti"><th>Name</th><th>Account Number</th><th>Bal</th>
<%long account=(long)request.getAttribute("AccNum");String yname=(String)request.getAttribute("Sname");
double Balance=(double)request.getAttribute("Balance");%>
<tr><td><%=account%></td><td><%=yname%></td><td><%=Balance%></td></tr></table>


</body>
</html>