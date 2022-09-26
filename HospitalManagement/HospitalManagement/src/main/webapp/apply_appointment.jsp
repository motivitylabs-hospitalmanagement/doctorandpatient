<%@page import="com.motivity.demo.controller.model.PatientDetails"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="index.jsp" >HOME</a>
  <a href="patient_profile.jsp">PATIENT_PROFILE</a>
  <a href="apply_appointment.jsp"  class="active">APPLY APPOINTMENT</a>
  <a href="appointment_status.jsp">VIEW STATUS</a>
  <a href="patient_login.jsp">LOGOUT</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
      </a>
  <%
  	String name=null;
  if(session !=null)
  {
	  name=(String) session.getAttribute("plname");
  }
  
  %>
 g   
</div>
 <a style="margin-left: 900px; font-size: larger; font-weight: bolder;">&#9787;&nbsp;&nbsp;welcome <%=name %></a>

<form action="insertAppointment">

<%
	PatientDetails pd=(PatientDetails)session.getAttribute("currentpatient");

%>
<table style="background-color: #c2fcfb;align-content: center; border-radius: 7px" border= "2" width="600" height="200" cellpadding="20" align="center" >
<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp;APPOINTMENT-APPLICATION &nbsp; :-)</caption>
<br><br>
<tr>
	<td>patient name</td>
	<td>:</td>
	<td><%=pd.getPname()%></td>
</tr>
<tr>
	<td>patient id</td>
	<td>:</td>
	<td><%=pd.getPid() %></td>
</tr>
<tr>
	<td><label>choose your problem</label></td>
	<td>:</td>
	<td><select  name = "problem">
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
	<td></td>
	<td>:</td>
	<td><input type="submit" value = "apply"></td>
</tr>

</form>

</body>
</html>