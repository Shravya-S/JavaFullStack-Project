<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<link rel="stylesheet" href="forgot.css">


</head>

<body>
<div class="container">

 <form action="fpwd" method="post" id="form-pass" onsubmit="return check()">
 <h3>Forgot Password?</h3>
 <h4>Change It Here</h4>
<input type="number" placeholder="Account Number" id="an" name="accn">
<br><br>
<input type="password" placeholder="Enter Password" id="an" name="p1" minlength="4"
  maxlength="8" size="8" required>
<br><br>
<input type="password" placeholder="Re-enter Password" id="an" name="p2">
<br>
<input type="submit" value="Change" id="btn" >
</form>   
</div>
</body>
</html>