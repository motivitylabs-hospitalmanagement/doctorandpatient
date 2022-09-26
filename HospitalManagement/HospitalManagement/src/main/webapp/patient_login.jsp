<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
td
{
border-radius: 7px;
}
tr
{
border-radius: 7px;
}
.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add an active class to highlight the current page */
.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

/* Hide the link that should open and close the topnav on small screens */
.topnav .icon {
  display: none;
}

</style>

<title>patient home</title>
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="index.jsp" >HOME</a>
  <a href="patient_home.jsp">PATIENT HOME</a>
  <a href="patient_registration.jsp">PATIENT REGISTRATION</a>
  <a href="patient_login.jsp" class="active">PATIENT_LOGIN</a>
  <a href ="#">ABOUT</a>
  <a href="#">CONTACT</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<br><br><br>
<form action="patientLogin">
<table style="background-color: #c2fcfb;align-content: center;" border= "2" width="600" height="200" cellpadding="20" align="center">
<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp; PATIENT-LOGIN &nbsp; :-)</caption>
<br><br>

<tr><td>Enter Patient email</td>
	<td>:</td>
	<td><input type="email" name = "pemail"></td>
</tr>
<tr><td>Enter Patient password</td>
	<td>:</td>
	<td><input type="password" name = "ppassword"></td>
</tr>
<tr><td><a href="patient_registration.jsp">you don't have an account?sign up</a></td>
	<td>:</td>
	<td><input type="submit" value= "LOG-IN"></td>
</tr>

</table>

</form>




</body>
</html>