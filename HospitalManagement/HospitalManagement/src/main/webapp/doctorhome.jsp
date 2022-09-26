<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>doctor home</title>
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
  background-color: #ddb6fa;
  color: gray;
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
</head>
<body>
<div class="topnav" id="myTopnav" >
  <a href="index.jsp">main Home</a>
  
  <a href="doctorhome.jsp" class="active">Doctor-HomePage</a>
  <a href="doctorregistration.jsp">doctor registration</a>
  <a href="doctorlogin.jsp">doctor login</a>
  <a href="doctorslist.jsp">doctors list</a>
  <a href="#about">about</a>
  <a href="#cantact">contact</a>
</div>
</body>
</html>