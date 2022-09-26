<%@page import="java.util.List"%>
<%@page import="com.motivity.demo.controller.model.PatientDetails"%>
<%@page import="com.motivity.demo.repository.AppointmentRepository"%>
<%@page import="com.motivity.demo.controller.model.Appointment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>&#9787;view appointment status </title>
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

<%Appointment ap = (Appointment)session.getAttribute("patientappiontment"); %>

<div class="topnav" id="myTopnav">
  <a href="index.jsp" >HOME</a>
  <a href="patient_profile.jsp">PATIENT_PROFILE</a>
  <a href="apply_appointment.jsp">APPLY APPOINTMENT</a>
  <a href="appointment_status.jsp" class="active">VIEW STATUS</a>
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
 
</div>
 <a style="margin-left: 900px; font-size: larger; font-weight: bolder;">&#9787;&nbsp;&nbsp;welcome <%=name %></a>
<table style="background-color: #c2fcfb;align-content: center;border-radius: 7px" border= "2" width="600" height="200" cellpadding="20" align="center">
<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp;APPOINTMENT-STATUS &nbsp; :-)</caption>
<br><br>

<tr style="color:blue;font-weight: bold;text-transform: uppercase;">
	<td>appointment id</td>
	<td>patient id</td>
	<td>problem</td>
	<td>doctor name</td>
	<td>doctor gender</td>
	<td>doctor phone number</td>
	<td>appointment fix date</td>
	<td>appointment time</td>
	<td>status of application</td>
</tr>
<%
	AppointmentRepository apr=(AppointmentRepository)session.getAttribute("appointmentRepository");
		PatientDetails pd=(PatientDetails)session.getAttribute("currentpatient");
	List<Appointment> applist=apr.patientsidestatus(Integer.toString(pd.getPid()));
	for(Appointment aa:applist)
	{
		%>
		<tr>
		<td><%=aa.getAid() %></td>
		<td><%=aa.getPatientid() %></td>
		<td><%=aa.getProblem() %></td>
		<td><%=aa.getDoctorname() %></td>
		<td><%=aa.getDoctorgender() %></td>
		<td><%=aa.getDoctorphno() %></td>
		<td><%=aa.getAptdate() %>
		<td><%=aa.getTime() %>
		<td><%=aa.getStatus()+" doctor" %></td>
		</tr>	
<%	
	}
%>
</table>

</body>
</html>