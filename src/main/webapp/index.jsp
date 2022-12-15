 <%@page import="com.db.DBConnect" %>
 <%@page import="java.sql.Connection" %>  


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp" %>


<style type="text/css">
.paint-card{
box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
</style>



</head>
<body>
<%@ include file="component/navbar.jsp" %>


  <%-- <% Connection conn=DBConnect.getConn(); 
	 out.print(conn); %> --%>
 

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hos6.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos8.webp" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos11.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
     <div class="carousel-item">
      <img src="img/hos19.png" class="d-block w-100" alt="..." height="500px">
    </div> 
    <div class="carousel-item">
      <img src="img/hos2.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>










<div class="container p-3">
	<p class="text-center fs-2 ">Key Features of our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p> Prince Medicare is govt. Certified & the Staff of our Hospital is Well trained to Handle
								any kind of Situation.</p>
							</div>
						</div>
					</div>
					
					
					
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">24*7 Ambulance</p>
								<p> Our Hospital Provides Ambulance Facility Throughout the City You Can Book Us at +917787929474 </p>
							</div>
						</div>
					</div>
					
					
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">OT Facility</p>
								<p> OT is Equipped with Modern Instruments to carrying out any Kind of Surgery. </p>
							</div>
						</div>
					</div>
					
					
					
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Proper Care</p>
								<p> Prince Medicare Offers ICU, HDU and well trained Nursing Staff for Betterment of Patients.</p>
							</div>
						</div>
					</div>
		
		
				</div>
		
			</div>
			
			<div class="col-md-4">
			<img alt="" src="img/doc1.jpg" height="500px">
			</div>
			
	</div>
</div>



<hr>




<div class="container p-2">
	<p class="text-center fs-2"> Our Team</p>
	<div class="row">
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img src="img/doc20.jpg" width="230px" height="300px">
					<p class="fw-bold fs-5"> Dr. Suman Priya</p>
					<p class="fs-7">(CEO & Chairman)</p>
				</div>
			</div>		
		</div>
		
		
		
		
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img src="img/doc12.jpg" width="230px" height="300px">
					<p class="fw-bold fs-5">Dr. Arryan Singh</p>
					<p class="fs-7">(Chief Doctor)</p>
				</div>
			</div>		
		</div>
		
		
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img src="img/doc18.webp" width="230px" height="300px">
					<p class="fw-bold fs-5">Dr. Manyata Roy</p>
					<p class="fs-7">(Director)</p>
				</div>
			</div>		
		</div>
		
		
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img src="img/doc11.jpg" width="230px" height="300px">
					<p class="fw-bold fs-5">Dr. NK. Cena</p>
					<p class="fs-7">(Chief Doctor)</p>
				</div>
			</div>		
		</div>
		
		
	</div> 
</div>









	<%@ include file="component/footer.jsp" %>
</body>
</html>