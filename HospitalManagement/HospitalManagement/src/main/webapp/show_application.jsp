<%@page import="com.motivity.demo.controller.model.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.motivity.demo.repository.AppointmentRepository"%>
<%@page import="com.motivity.demo.controller.model.DoctorRegistration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="acceptAppointment">
<div class="topnav" id="myTopnav">
  <a href="index.jsp">HOME</a>
  <a href="doctorprofile.jsp" >DOCTOR_PROFILE</a>
  <a href="show_application.jsp" class="active"> SHOW APPLICATIONS</a>
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
<%
	AppointmentRepository apprepo=(AppointmentRepository)session.getAttribute("appointmentRepository");
	List<Appointment> aplist = apprepo.showAndAcceptAppointment(doctor.getDepartment(), "pending");
%>
<table style="background-color: #c2fcfb;align-content: center; border-radius: 7px" border= "2" width="600" height="200" cellpadding="20" align="center">
<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp;APPOINTMENT-APPLICATIONS &nbsp; :-)</caption>
<br><br>
<tr style="font-weight: bolder; text-transform:uppercase;">
<td>appid</td>
<td>appointment id</td>
<td>patient name</td>
<td>patient phone number</td>
<td>patient gender</td>
<td>patient problem</td>
<td>patient age</td>
<td>date for appointment</td>
<td>time for appointment</td>
<td>acceptence</td>
</tr>
<%
for(Appointment ap:aplist)
{
%>
	<tr>
	<td><input type="aid" value=<%=ap.getAid()%> placeholder=<%=ap.getAid()%> name=aid></td>
	<td><%=ap.getAid() %></td>
	<td><%=ap.getPatientname() %></td>
	<td><%=ap.getPatientphno() %></td>
	<td><%=ap.getPatientgender() %></td>
	<td><%=ap.getProblem() %></td>
	<td><%=ap.getPatientage() %></td>
	<td><input type="date" name=date id="dates"></td>
	<td><select name="time">
	 <option value="9:00 AM to 10:00 AM">9:00 AM to 10:00 AM</option>
	 <option value="10:00 AM to 11:00 AM">10:00 AM to 11:00 AM</option>
	 <option value="12:00 PM to 01:00 PM">12:00 PM to 01:00 PM</option>
	 <option value="2:00 PM to 03:00 PM">2:00 PM to 03:00 PM</option>
	 <option value="7:00 PM to 09:00 PM">7:00 PM to 09:00 PM</option>
	</select></td>
	<td><input type="submit" value="accept" style="border-radius: 5px;color: aqua;"></td>
	</tr>
	
<% 

}

%>
</table>
<script>
           var date=new Date();
           var tdate=date.getDate();
           
           var tmonth=date.getMonth()+1;
           if(tmonth<10){
               tmonth='0'+tmonth;
           }
           if(tdate<10){
               tdate='0'+tdate;
           }
           var tyear=date.getUTCFullYear();
           var mindate=tyear+'-'+tmonth+'-'+tdate;
       document.getElementById("dates").setAttribute('min',mindate)
      </script>
</form>
</body>
</html>