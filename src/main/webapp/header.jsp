<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="io">

<%String name=(String)request.getAttribute("nam");%>;

<img src="images/log.png" id="one"> <h2 >Welcome <%=name%></h2>

<a href="login.jsp" id="btn">logout</a>
</div>
<div id="two" >
<ul id="ctn">

<li ><a href="home.jsp" id="i">Home</a></li>
<li ><a href="Balance.jsp" id="i">Check Balance</a></li>
<li ><a href="Deposit.jsp" id="i">Deposit</a></li>
<li ><a href="transfer.jsp" id="i">Transfer Amount</a></li>
<li ><a href="#" id="i">Settings</a></li>
</ul></div><br><br>
</body>
</html>