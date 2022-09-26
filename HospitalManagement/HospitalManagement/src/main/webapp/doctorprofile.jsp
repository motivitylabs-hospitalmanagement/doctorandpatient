<%@page import="com.motivity.demo.controller.model.DoctorRegistration"%>
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
<title>doctor profile</title>
</head>
<body align="center">


<div class="topnav" id="myTopnav">
  <a href="index.jsp">HOME</a>
  <a href="doctor_profile.jsp" class="active">DOCTOR_PROFILE</a>
  <a href="show_application.jsp"> SHOW APPLICATIONS</a>
  <a href="view_appointments.jsp">VIEW APPOINTMENTS</a>
  <a href="doctorhome.jsp">LOG OUT</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
      </a>
 
</div>
<%
		DoctorRegistration doctor= (DoctorRegistration)session.getAttribute("df");
%>
 <h3 style="margin-left: 900px; font-size: larger; font-weight: bolder;">&#9787;&nbsp;&nbsp;welcome <%=doctor.getFirstname()%></h3>


	<table  border = "2" width = "500" height = "200" cellpadding = "20" margin-top ="40px" style="background-color: #c2fcfb;align-content: center; border-radius: 7px">
	<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp;DOCTOR PROFILE &nbsp; :-)</caption>
	<tr style="text-transform: uppercase;"><td>doctor id</td><td>first_name</td><td>lastname</td><td>dept..</td><td>phon_no</td>
	<td>gender</td><td>email</td><td>exp</td></tr>

<tr><td><%= doctor.getId() %></td><td><%=doctor.getFirstname() %></td><td><%=doctor.getLastname() %></td><td><%=doctor.getDepartment() %></td><td><%=doctor.getPhoneno() %></td>
	<td><%=doctor.getGender() %></td><td><%=doctor.getEmail() %></td><td><%=doctor.getExp() %></td>
	<%session.setAttribute("ddept1", doctor.getDepartment()); %>
	</tr>
	
	<br><br>
	
	

</body>
</html>