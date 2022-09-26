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
a
{
text-transform: uppercase;
}


</style>
<title>Insert title here</title>
</head>
<body bgcolor="white">

<div class="topnav" id="myTopnav" >
  <a href="index.jsp">main Home</a>
  
  <a href="doctorhome.jsp">Doctor-HomePage</a>
  <a href="doctorregistration.jsp"  class="active">doctor registration</a>
  <a href="doctorlogin.jsp">doctor login</a>
  <a href="doctorslist.jsp">doctors list</a>
  <a href="#about">about</a>
  <a href="#cantact">contact</a>
</div>

<form action="doctorRegistration">
<div style="background-color: silver; margin-left: 200px ;border-bottom-style: solid;width: 70%;height: 900;margin-right: 20px" >
<br><br>

<br><br>
<center>
<table border= "2" width="600" height="200" cellpadding="20" align="center" style="background-color: #c2fcfb;align-content: center; border-radius: 7px">
<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp;DOCTOR-REGISTRATION &nbsp; :-)</caption>
<tr>
	<td><label>enter First Name</label></td>
	<td>:</td>
	<td><input type="text" name = "firstname"></td>
</tr>
<tr>
	<td><label>enter Last Name</label></td>
	<td>:</td>
	<td><input type="text" name = lastname></td>
</tr>
<tr>
	<td><label>enter department</label></td>
	<td>:</td>
	<td><select  name = "department">
	<option value = "ENT">ENT</option>
	<option value = "Dentist">Dentist</option>
	<option value = "cordialogy">cordialogy</option>
	<option value = "Neurology">Neurology</option>
	<option value = "Orthopedic">Orthopedic</option>
	<option value = "dermatology">dermatology</option>
	<option value = "general">General</option>
	
	
	</select></td>
</tr>
<tr>
	<td><label>enter PhoneNumber</label></td>
	<td>:</td>
	<td><input type="number" name = "phoneno"></td>
</tr>
<tr>
	<td><label>choose gender</label></td>
	<td>:</td>
	<td> <input type="radio" name="gender" value="male" placeholder="male">male &nbsp;&nbsp;
	  <input type="radio" name="gender" value="female" placeholder="female">female &nbsp;&nbsp;
	<input type="radio" name="gender" value="others" placeholder="others"> others &nbsp;&nbsp;
	</td>
</tr>

<tr>
	<td><label>enter full address</label></td>
	<td>:</td>
	<td><input type="text" name = "address"></td>
</tr>
<tr>
	<td><label>enter email</label></td>
	<td>:</td>
	<td><input type="email" name="email"></td>
</tr>
<tr>
	<td><label>enter password</label></td>
	<td>:</td>
	<td><input type="password" name="password"></td>
</tr>
<tr>
	<td><label>enter experience in years </label></td>
	<td>:</td>
	<td><input type="number" name="exp"></td>
</tr>
<tr>
	<td>already have'n account ? <a href = "doctorlogin.jsp">signin</a></td>
	<td></td>
	<td><input type="submit" name="register"></td>
</tr>
</table>
</center>

</div>

</form>

</body>
</html>