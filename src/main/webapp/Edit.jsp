<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Details</title>
<style>
body{
	background-image:url("images/m.jpg");
}
.block{
height:450px;
width:320px;
background:#191919;
border:none;
text-align:center;
border-radius:40px;
position: absolute;
top: 25%;
left: 40%; 
padding: 15px 30px;
margin:12px 0px;

}
.block h2{
    color:#fff;
     position: reltive;
    top: 8%;
    left: 3%;
    }
.block input{
width:60%;
height:100%;
background:transperent;
border:2px solid rgba(255,255,255,.2);
border-radius:40px;
padding:15px ;
text-align:center;
}

.block input::placeholder{
    color:#757575;
    padding:10px;
    text-align:center;
    }
 
  .block button{
    width:50%;
    height:45%;
   text-color: black;
    margin: 10px ;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 10px 25px;
    border-radius: 25px;
    transition: 0.55s;
    cursor: pointer;
  } 
  .block button:hover{
    
    background: linear-gradient( #FAF6D0 5%, #EDC664 100%);
 
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
 top:514.5px;
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
#error-message{
    width:300px;
    height:20px;
    color:green;
    position:relative;
    top:-48px;
    left:20px;
    text-align:center;
    font-size:x-large;
    }
#err-message{
    width:300px;
    height:20px;
    color:red;
    position:relative;
    top:-48px;
    left:20px;
    text-align:center;
    font-size:x-large;
    }
</style>
</head>
<body>
<div class="io">

<%String name=(String)request.getAttribute("nm");%>
<img src="images/log.png" id="one"> <h2 >Welcome <%=name%> </h2>
<a href="login.jsp" id="btn">logout</a>
</div>
<div id="two">
<ul id="ctn">

<li ><a href="EmpHome.jsp" id="i">Home</a></li>
<li ><a href="AddCustomer.jsp" id="i">Add Customer Data</a></li>
<li ><a href="Edit.jsp" id="ii">Edit Data</a></li>
<li ><a href="Delete.jsp" id="i">Delete Data</a></li>
<li ><a href="View" id="i">View Data</a></li>
</ul></div>
<div class="block">
<%
String message=(String)request.getAttribute("msg");%>
<%if(message!=null){ %>
<div id="error-message"><%=message%></div>
<%
}%>
<%
String mess=(String)request.getAttribute("mssg");%>
<%if(mess!=null){ %>
<div id="err-message"><%=mess%></div>
<%
}%>
<form action="edit" method="post">
<h2>Customer Details</h2>
<br><br>

<input type="text" placeholder="Account Number" name="acc"><br><br>
<input type="text" placeholder="Customer Name" name="cn"><br><br>
<input type="text" placeholder="Phone Number " name="ph"><br><br>
<input type="email" placeholder="Email " name="e"><br><br>
<input type="text" placeholder="PIN" name="pn">
<button>Add</button>
</form>

</div>
<footer>@2023 Your Bank</footer>
</body>
</html>