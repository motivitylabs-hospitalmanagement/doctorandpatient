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
input
{
border-radius: 5px;
}
input:hover
{
	box-shadow: red 5px;
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
  <a href="patient_home.jsp" >PATIENT HOME</a>
  <a href="patient_registration.jsp" class="active">PATIENT REGISTRATION</a>
  <a href="patient_login.jsp">PATIENT_LOGIN</a>
  <a href ="#">ABOUT</a>
  <a href="#">CONTACT</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<br><br><br>
<form action="patientRegister">
<table style="background-color: #c2fcfb;align-content: center; border-radius: 7px;" border= "2" width="600" height="200" cellpadding="20" align="center">
<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp; PATIENT-REGISTRATION &nbsp; :-)</caption>
<br><br>
<tr>
<td><label>enter patient name</label></td>
<td>:</td>
<td><input type="text" name="pname"></td>	
</tr>
<tr>
<td><label>enter patient age</label></td>
<td>:</td>
<td><input type="number" name="age"></td>	
</tr>
<tr>
<td><label>enter patient address</label></td>
<td>:</td>
<td><input type="text" name="paddress"></td>	
</tr>
<tr>
<td><label>enter patient email</label><blink style="font-size: 10px;color: rgb(255, 0, 0);">userid for login</blink></td>
<td>:</td>
<td><input type="email" name="email"></td>	
</tr>
<tr>
	<td><label>choose gender</label></td>
	<td>:</td>
	<td><input type="radio" name="pgender" value="male">male
	  &nbsp;&nbsp; <input type="radio" name="pgender" value="female" >female
	  &nbsp;&nbsp;<input type="radio" name="pgender" value="others">others
	</td>
</tr>
<tr>
<td><label>enter patient phone number</label></td>
<td>:</td>
<td><input type="number" name="pphno"></td>	
</tr>
<tr>
<td><label>enter patient email</label><blink style="font-size: smaller;">user id for login</blink></td>
<td>:</td>
<td><input type="password" name="ppassword"></td>	
</tr>
<tr>
<td><label>already you have an account?<a href="patient_login.jsp">sign in </a></label></td>
<td>:</td>
<td><input type="submit" value="REGISTER" style="background-color: blue; border-radius: 5px;text-size-adjust: inherit;color: #f2f2f2; font-weight: bold;" ></td>	
</tr>
</table>
</form>
</body>
</html>