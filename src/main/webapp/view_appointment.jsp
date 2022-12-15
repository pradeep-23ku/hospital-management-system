<%@page import ="com.dao.DoctorDao" %>
<%@page import="com.db.DBConnect" %>
<%@page import="com.dao.AppointmentDAO" %>
<%@page import="com.dao.UserDao" %>
<%@page import="com.entity.Appointment" %>
<%@page import="com.entity.Doctor" %>
<%@page import="com.entity.User" %>
<%@page import="java.util.List"%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view appointment page</title>

<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0)),
		url("img/buil.webp");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}



</style>

</head>
<body>

	<%@include file="component/navbar.jsp"%>

	<c:if test="${ empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	
	
	
	
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-8 p-0">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Appoint Time</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								<%
								User user = (User) session.getAttribute("userObj");
								AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
								for (Appointment ap : list) {
									Doctor d = dao2.getDoctorById(ap.getDoctorId());
								%>
								<tr>
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppoinDate()%></td>
									<td><%=ap.getTime() %></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td>
									
									
									<%-- 
									<%
										if ("confirm".equals(ap.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning">confirm</a> <%
										 }%> --%>
									
									
										<%
										 if("Pending".equals(ap.getStatus())||"pending".equals(ap.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning">Pending</a> 
										
				
								
										<%
										 } else {
										 %> <%=ap.getStatus()%> <%
										 }
										 %>
									</td>
								</tr>
								<%
								}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>

			<div class="col-md-1 p-0">
				<img alt="" src="img/doct1.jpg">
				
			</div>
		</div>
	</div>
	
	
	

</body>
</html>