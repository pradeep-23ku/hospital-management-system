<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo User Appointment</title>
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

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="img/doc4.jpg">
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<!-- <p class="text-center fs-3 fw-bold text-success">User Appointment</p> -->
						<p class="text-center"> <a class="fs-6 fw-bold text-danger" href="user_login.jsp">Please Visit User Login to Take Appointment!!! </a></p>
						
						<p class=" fs-5 text-primary">Oncology</p>
						<p class=" fs-7 text-dark">Cancer is a ruthless disease. It evolves constantly and spreads relentlessly. It's hard to catch and even harder to treat.

But that is about to change, with Precision Oncology. Prince Medicare's unique approach to diagnosing, treating and monitoring cancer that is as precise as it can get.

Cancer is Conquerable. And you can conquer it too. With precision, with Prince Medicare. Stay a step ahead of cancer with Prince medicare's Cancer Centres.</p>
						
						<p class="text-center"> <a class="fs-7 fw-bold text-warning" href="user_login.jsp">Book Appointment </a></p>
						<p class=" fs-5 text-primary">Cardiology</p>
						<p class=" fs-7 text-dark">The Prince Medicare Heart Institutes are regarded as one of the best heart hospitals in India, performing a multitude of treatments and procedures in cardiology and cardiothoracic surgery. The scorecard shows an unmatched record of over 1,52,000 cardiac and cardiothoracic surgeries.

We have vast experience in the most complicated coronary artery bypass surgery, surgery for all types of valvular heart diseases, paediatric heart surgery, adult and paediatric heart transplantation with success rates comparable to international standards.</p>
						<p class="text-center"> <a class="fs-7 fw-bold text-warning" href="user_login.jsp">Book Appointment </a></p>
						<p class=" fs-5 text-primary">Orthopedics</p>
						<p class=" fs-7 text-dark">The Prince Medicare's Orthopaedics is regarded as one of the best & top orthopaedics hospitals in India with a legacy of innovation and excellence. The Institutes are at the forefront in offering the latest in Orthopedic treatments and Orthopedic surgical advancements in India on par with the best centres in the world.

Prince Medicare offers key & best orthopedic surgeries and procedures in India. We perform bone and joint replacement surgeries which include the most current Arthroscopic and Reconstructive techniques.</p>
						
						<p class="text-center"> <a class="fs-7 fw-bold text-warning" href="user_login.jsp">Book Appointment </a></p>
						<p class=" fs-5 text-primary">Nephrology</p>
						<p class=" fs-7 text-dark">Nephrology is a branch of medical science that deals with the diagnosis and treatment of disorders related to the kidney. Nephrology is a centre of excellence at Prince Medicare and sees more than 10,000 patients every year. 
						Prince Medicare houses some of the very best specialists in the world who specialize in management of kidney failure, dialysis, electrolyte disturbance, diabetic nephropathy, hypertension to kidney transplant. The transplant program is very active. Prince Medicare is your one-stop destination to book the best Nephrologists in your town.</p>
						<p class="text-center"> <a class="fs-7 fw-bold text-warning" href="user_login.jsp">Book Appointment </a></p>
						
						
						<p class=" fs-5 text-primary">Medicine</p>
						<p class=" fs-7 text-dark">General medicine or internal medicine as it is called, they are trained to diagnose anything, from minor to major problems. You can definitely go to the medicine department and they will look into the problem and diagnose it. If at all it is minor problem they will treat you with medication, if it is something for example appendicitis or gastric ulcer then might refer you to the surgical department for further treatment..</p>
						<p class="text-center"> <a class="fs-7 fw-bold text-warning" href="user_login.jsp">Book Appointment </a></p>
						
						<p class=" fs-5 text-primary">Dermatology</p>
						<p class=" fs-7 text-dark">Dermatology is the branch of medicine dealing with the skin. It is a speciality with both medical and surgical aspects.A dermatologist is a specialist medical doctor who manages diseases related to skin, hair, nails, and some cosmetic problems..</p>
						<p class="text-center"> <a class="fs-7 fw-bold text-warning" href="user_login.jsp">Book Appointment </a></p>
					<%-- 	
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class=" fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if> --%>
						
						
						
						
						<form class="row g-3" action="#" method="post">

						<%-- 	<input type="hidden" name="userid" value="${userObj.id }">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname" value="Pradeep Kumar Biswal" readonly>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Gender</label>
								<!-- <input
									required type="text" class="form-control" name="fullname" value="male" readonly>	 -->						
									
								<select class="form-control" name="gender" required>
									<option value="male">-select-</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
								
							</div>




							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Age</label> <input
									required type="text" maxlength="2" size="2" pattern="[0-9]{2}" class="form-control" name="age" value="26" readonly>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label> 
									<input type="date" class="form-control" required
									name="appoint_date" min="2022-11-30" >
							</div>
							
							
							
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Time</label>
								<!-- <input
									required type="text" class="form-control" name="fullname" value="male" readonly>		 -->					
									
								<select class="form-control" name="adate" required>
									<option value="">-select-</option>
									<option value="10AM-1PM">10AM-1PM</option>
									<option value="3PM-5PM">3PM-5PM</option>
								</select>
								
							</div>
							
							

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="text" class="form-control" name="email" pattern=".+@gmail\.com" value="biswalpradeep@gmail.com" readonly>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" required type="text" class="form-control"
									name="phno"  size="10" pattern="[0-9]{10}" placeholder="Enter 10-Digit mobile number" value="7787929474" readonly>
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label> <input
									required type="text" class="form-control" name="diseases" value="heart" readonly>
							</div>

							<div class="col-md-12">
								<label for="inputPassword4" class="form-label">Doctor</label>
								<input
									required type="text" class="form-control" name="doct" value="Dr. Sandhyarani(Cardiologist)" readonly>
								 <select
									required class="form-control" name="doct">
									<option value="">--select--</option>

									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>

								</select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols="" readonly> Mishra sahi, Puri, Odisha, pin-752001 </textarea>
							</div>




							<c:if test="${empty userObj }">
								<a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>

							<c:if test="${not empty userObj }">
							
							
							
								<button class="col-md-6 offset-md-3 btn btn-success">Click Here</button>
							</c:if> --%>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%@include file="component/footer.jsp"%>
	
	
	
	
</body>
</html>