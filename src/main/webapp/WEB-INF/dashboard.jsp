<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- form:form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@page isErrorPage="true"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mobile Auto body and Details</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Mitr&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="">
	<!-- Main content of the webpage -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">

		<a class="navbar-brand" href="/"><img class="companyIcon mb-2"
			alt="Company Logo" src="../image/TopNotchProject.jpg"> Mobile
			Auto Body Details</a>
		<button id="callButton" class="header-button btn-btn-secondary">Call
			Now!</button>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#home">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#services">Services</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#about-us">About
						Us</a></li>
				<li class="nav-item"><a class="nav-link" href="#contact-us">Contact
						Us</a></li>
			</ul>
		</div>
	</nav>
	<div class="container bg-light pl-0 pr-0">
		<section id="carousel-section">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Slides -->
				<div class="carousel-inner bg-dark">
					<div class="carousel-item active">
						<img src="../image/TopNotchHeader.jpg" alt="Slide 1">
						<div class="carousel-caption"></div>
					</div>
					<div class="carousel-item">
						<img src="../image/TopNotchSlide.jpg" alt="Slide 2">
						<div class="carousel-caption"></div>
					</div>
					<div class="carousel-item">
						<img src="../image/TopNotchCar2.jpg" alt="Slide 3">
						<div class="carousel-caption"></div>
					</div>
				</div>
				<!-- Controls -->
				<a class="carousel-control-prev" href="#myCarousel" role="button"
					data-slide="prev"> <span class="carousel-control-prev-icon"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#myCarousel" role="button"
					data-slide="next"> <span class="carousel-control-next-icon"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>
			<div class="w-70 text-center carouselBreak">
				<h3 class=" mt-3 ">Automobile detailing serving Central
					Pennsylvania!</h3>
				<section id="services"></section>
				<p>
					As a specialized auto detailing and body shop, we take pride in our
					meticulous approach to detailing. Our skilled technicians are
					trained in the latest techniques and use state-of-the-art equipment
					to restore and protect your vehicle's appearance. <span
						style="font-weight: bold;">Call for additional information
						at 717-557-5051.</span>
				</p>

			</div>
		</section>
		<div class="services">
			<h2 class=" mt-3">Services</h2>
			<br>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-1"></div>
						<div class="card-body">
							<h3>Exterior Wash</h3>
							<p class="text-break">Includes washing the exterior of the
								vehicle to remove dirt, grime, and contaminants from the paint
								surface, windows, and wheels.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-2"></div>
						<div class="card-body">
							<h3>Waxing/Sealing</h3>
							<p class="text-break">Involve applying a protective wax or
								sealant to the paint surface to provide long-lasting shine and
								protection against environmental elements.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-3"></div>
						<div class="card-body">
							<h3>Paint Correction</h3>
							<p class="text-break">This involves using specialized
								polishing techniques to remove swirl marks, scratches, or other
								imperfections from the paint surface, resulting in a smoother
								and more flawless finish.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-4"></div>
						<div class="card-body">
							<h3>Detailing Engine Bay</h3>
							<p class="text-break">A more thorough cleaning and detailing
								of the engine bay, including degreasing, steam cleaning, and
								applying protective coatings.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-5"></div>
						<div class="card-body">
							<h3>Wheel and Tire Cleaning</h3>
							<p class="text-break">Thorough cleaning and detailing of the
								wheels and tires, including removal of brake dust, dirt, and
								grime, and applying protective coatings or tire shine products.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-6"></div>
						<div class="card-body">
							<h3>Headlight Restoration</h3>
							<p class="text-break">Removing oxidation and haze from the
								headlights to restore their clarity and improve visibility.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-7"></div>
						<div class="card-body">
							<h3>Interior Detailing</h3>
							<p class="text-break">Cleaning and conditioning the
								dashboard, console, door panels, and other interior surfaces,
								shampooing the carpets and upholstery, and treating leather or
								fabric to restore their appearance and condition.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-8"></div>
						<div class="card-body">
							<h3>Headliner Cleaning</h3>
							<p class="text-break">Involve cleaning and treating the
								headliner, which is the fabric covering on the interior roof of
								the vehicle, to remove dirt, stains, and odors.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="card service-card">
						<div class="card-header service-column service-9"></div>
						<div class="card-body">
							<h3>Interior or Exterior Trim Upgrades</h3>
							<p class="text-break">This may include adding or upgrading
								interior or exterior trim pieces, such as chrome accents,
								decals, or other customizations to enhance the appearance of the
								vehicle.</p>
							<section id="about-us"></section>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-5">

			<div class="col-md-6">
				<h3>About us</h3>
				<img alt="Company Logo" class="img-fluid aboutImg"
					src="../image/TopNotchProject.jpg">
			</div>
			<div class="col-md-6">
				<h5 class="mt-5">@Top Notch Auto Details and Body Shop, we are
					dedicated to providing the highest quality auto detailing and body
					shop services to our valued customers. With our expertise and
					commitment to excellence, we bring back that new car feeling, both
					inside and out, top to bottom.</h5>
				<br>
				<p>With years of experience in the auto detailing and body shop
					industry, we have earned a reputation for delivering top-notch
					results and exceptional customer service. We are committed to
					exceeding our customers' expectations and ensuring their
					satisfaction with our work.</p>
				<p>At Top Notch, we are passionate about cars and believe that
					every vehicle deserves to look its best. Our attention to detail,
					use of premium products, and commitment to eco-friendly practices
					make us the ideal choice for your auto detailing and body shop
					needs.</p>
				<p>Contact us today to schedule an appointment and experience
					the Top Notch difference. We are conveniently located in
					Pennsylvania, and our friendly team is ready to serve you. Call
					717-557-5051 for more information.</p>
				<section id="contact-us"></section>
				<p>Trust your vehicle to the experts at Top Notch Auto Details
					and Body Shop, where excellence is our standard.</p>
			</div>
		</div>

		<div class="d-flex gap-3 mt-5">
			<div class="w-50">
				<h3>Contact Us | Reviews</h3>
				<br>
				<form:form id="ratingForm" modelAttribute="ratingForm"
					action="/submitRating" method="post">
					<div class="form-group">
						<label for="name">Name:</label>
						<form:input type="text" class="form-control" path="name"
							required="true" />
					</div>
					<div class="form-group">
						<label for="email">Email:</label>
						<form:input type="email" class="form-control" path="email"
							required="true" />
					</div>
					<div class="form-group">
						<label for="number">Number:</label>
						<form:input type="number" class="form-control" path="number"
							required="true" />
					</div>
					<div class="form-group">
						<label for="rating">Rating:</label>
						<div class="stars">
							<form:radiobutton path="rating" value="1" id="star1"
								onclick="highlightStars(0)" />
							<label for="star1"><i class="fas fa-star"></i></label>
							<form:radiobutton path="rating" value="2" id="star2"
								onclick="highlightStars(1)" />
							<label for="star2"><i class="fas fa-star"></i></label>
							<form:radiobutton path="rating" value="3" id="star3"
								onclick="highlightStars(2)" />
							<label for="star3"><i class="fas fa-star"></i></label>
							<form:radiobutton path="rating" value="4" id="star4"
								onclick="highlightStars(3)" />
							<label for="star4"><i class="fas fa-star"></i></label>
							<form:radiobutton path="rating" value="5" id="star5"
								onclick="highlightStars(4)" />
							<label for="star5"><i class="fas fa-star"></i></label>
						</div>
					</div>
					<div class="form-group">
						<label for="comments">Comments:</label>
						<form:textarea class="form-control" path="comments" rows="3" />
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form:form>
			</div>
			<div id="reviewList" class="list-group w-50">
				<div class="reviewScroll">
					<c:forEach items="${reviews}" var="review">
						<div class="card mb-3">
							<div class="card-body">
								<h5 class="card-title">${review.name}</h5>
								<p class="card-text">"${review.comments}"</p>
								<div class="d-flex align-items-center">
									<span></span>
									<div class="ml-2">
										<c:set var="stars" value="${review.rating}" />
										<c:forEach begin="1" end="5" var="i">
											<c:choose>
												<c:when test="${i <= stars}">
													<i class="fas fa-star text-warning"></i>
													<!-- Display a filled star -->
												</c:when>
												<c:otherwise>
													<i class="far fa-star text-warning"></i>
													<!-- Display an empty star -->
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<footer class="bg-light text-center py-3">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="#home">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#services">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#about-us">About
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact-us">Contact
							Us</a></li>
				</ul>
			</nav>
			<ul class="list-inline mt-3">
				<li class="list-inline-item"><a
					href="https://www.facebook.com/people/Topnotchbodyshopdetailing/100083074069879/?mibextid=LQQJ4d"
					target="_blank"> <i class="fab fa-facebook-f"></i>
				</a></li>
				<li class="list-inline-item"><a
					href="https://www.instagram.com" target="_blank"> <i
						class="fab fa-instagram"></i>
				</a></li>
				<li class="list-inline-item"><a href="https://www.twitter.com"
					target="_blank"> <i class="fab fa-twitter"></i>
				</a></li>
			</ul>
			<p class="mb-0">Mobile Auto Body and Detailing &copy; 2023. All
				rights reserved. | Phone: 717-557-5051 | Email:
				mason@topnotch-bodyshop.com</p>
		</div>
	</footer>
	<script src="js/script.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>