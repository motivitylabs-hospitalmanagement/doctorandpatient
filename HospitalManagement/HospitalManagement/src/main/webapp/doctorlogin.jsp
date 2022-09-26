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
<body>
<div class="topnav" id="myTopnav" >
  <a href="index.jsp" >main Home</a>
  
  <a href="doctorhome.jsp">Doctor-HomePage</a>
  <a href="doctorregistration.jsp">doctor registration</a>
  <a href="doctorlogin.jsp" class="active">doctor login</a>
  <a href="doctorslist.jsp">doctors list</a>
  <a href="#about">about</a>
  <a href="#cantact">contact</a>
</div>


<form action="doctorloginm">
<table border= "2" width="600" height="200" cellpadding="20" align="center" style="background-color: #c2fcfb;align-content: center; border-radius: 7px;">
<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp;DOCTOR LOGIN &nbsp; :-)</caption>
<tr><td><label>enter email</label></td>
<td><input type="email" name="email"></td>
</tr>
<tr>
<td><label>enter password</label></td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td><a href="doctorregistration.jsp">you don't have an account</a></td>
<td><input type="submit" value="login"></td></tr>
</table>
</form>

</body>
</html>