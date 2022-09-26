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
  <a href="patient_profile.jsp" class="active">PATIENT_PROFILE</a>
  <a href="apply_appointment.jsp">APPLY APPOINTMENT</a>
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
 
</div>
 <a style="margin-left: 900px; font-size: larger; font-weight: bolder;">&#9787;&nbsp;&nbsp;welcome <%=name %></a>


</body>
</html>