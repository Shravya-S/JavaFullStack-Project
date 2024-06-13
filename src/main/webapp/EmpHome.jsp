<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   z-index:1;
   background-color:#739cb8;
 }
 
 #ctn{
  display:flex;
  list-style-type:none;
  width:1100px;
  gap:100px;
  top:20px;
  position:relative;
  left:200px;
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
  z-index:1;

 }
 #ii{
 text-decoration:none;
 color:#EABF3F;
 font-weight:bold;
 }
 footer{
 background-color:#d9d9d9;
 position:relative;
 width:1530px;
 top:70px;
 left:-8px;
 text-align:center;
 }
 img{
 position:relative;
 left:-8px;
 }
 .container{
  background: url("images/piggy.jpeg") no-repeat left;
    background-size: 50% 100%;
    overflow: hidden;
    padding: 50px 0;
    
    
 }
 .inner{
    width: 55%;
    float: right;
    background-color: #ba6c6c;
    padding: 50px 50px;
    box-shadow: 13px 12px 8px rgba(0,0,0,0.3);
}
.inner h1{
    margin-bottom: 30px;
    font-size: 30px;
    font-weight: 900;
}
.text{
    font-size: 13px;
    color: #dbd9df;
    line-height: 30px;
    text-align: justify;
    margin-bottom: 40px;
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

<li ><a href="home.jsp" id="ii">Home</a></li>
<li ><a href="AddCustomer.jsp" id="i">Add Customer Data</a></li>
<li ><a href="Edit.jsp" id="i">Edit Data</a></li>
<li ><a href="Delete.jsp" id="i">Delete Data</a></li>
<li ><a href="View.jsp" id="i">View Data</a></li>

</ul></div>
<div class="container">
<div class="inner">
<h1>About Us</h1>
            <p class="text">
                At Your Bank, we understand that a Savings Account, while being a necessity, 
                can fuel all your dreams - which is why we offer multiple types of accounts to meet all your needs and an easier way to
                 open your account from anywhere.
                  Your bank is a financial institution that accepts deposits from the public and creates a demand deposit while simultaneously making loans.
                   Lending activities can be directly performed by the bank or indirectly through capital markets.

Whereas banks play an important role in financial stability and the economy of a country, most jurisdictions exercise a high degree of regulation over banks.
            </p>
            </div></div>
<footer>@2023 Your Bank</footer>
</body>
</html>