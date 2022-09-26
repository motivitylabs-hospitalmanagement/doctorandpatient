<%@page import="com.motivity.demo.controller.model.DoctorRegistration"%>
<%@page import="java.util.List"%>
<%@page import="com.motivity.demo.controller.HomeController"%>
<%@page import="com.motivity.demo.repository.DoctorRepo"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
a
{
text-transform: uppercase;
}
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
<title>Insert title here</title>
</head>
<body style="align-content: center;align-items: center;">
<div class="topnav" id="myTopnav">
  <a href="index.jsp">main Home</a>
  
  <a href="doctorhome.jsp">Doctor-HomePage</a>
  <a href="doctorregistration.jsp">doctor registration</a>
  <a href="doctorlogin.jsp">doctor login</a>
  <a href="doctorslist.jsp" class="active">doctors list</a>
  <a href="#about">about</a>
  <a href="#cantact">contact</a>
  </div>
  
  <br><br>
	<table  border = "2" width = "500" height = "200" cellpadding = "20" margin-top ="40px" style="background-color: #c2fcfb;align-content: center; border-radius: 7px ;margin-left: 400px">
	<caption style="background-color: #89d98b;font-family: monospace;font-size: 30px;font-weight: bold;">(-: &nbsp;DOCTORS LIST &nbsp; :-)</caption>
<h3></h3><tr bgcolor="wheat"><td>doctor name</td> <td>special </td><td>experience</td></tr></h3>
	<%
		DoctorRepo doctorrepo =(DoctorRepo)session.getAttribute("doctorrepo");
		List<DoctorRegistration> drlist=(List)doctorrepo.findAll();
		for(DoctorRegistration dr:drlist)
		{
	%>
	<tr><td><%=dr.getFirstname()+" "+dr.getLastname() %></td> <td><%=dr.getDepartment() %></td><td><%=dr.getExp() %></td></tr>
	
	<%} %>
	</table>

</body>
</html>