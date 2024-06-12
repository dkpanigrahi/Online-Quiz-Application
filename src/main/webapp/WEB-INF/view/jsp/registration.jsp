<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create an account</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<style type="text/css">
body {
	overflow-x: hidden;
	height: 100%;
	/* background-color: #B0BEC5; */
	background-repeat: no-repeat
}

.card0 {
	/* box-shadow: 0px 4px 8px 0px #757575; */
	border-radius: 0px
}

.card2 {
	margin: 70px 70px
}

.logo {
	width: 200px;
	height: 100px;
	margin-top: 20px;
	margin-left: 35px
}

.image {
	width: 360px;
	height: 280px
}

.border-line {
	border-right: 1px solid #EEEEEE
}

/* .facebook {
	background-color: #3b5998;
	color: #fff;
	font-size: 18px;
	padding-top: 5px;
	border-radius: 50%;
	width: 35px;
	height: 35px;
	cursor: pointer
}
 */
/* .twitter {
	background-color: #1DA1F2;
	color: #fff;
	font-size: 18px;
	padding-top: 5px;
	border-radius: 50%;
	width: 35px;
	height: 35px;
	cursor: pointer
}

.linkedin {
	background-color: #2867B2;
	color: #fff;
	font-size: 18px;
	padding-top: 5px;
	border-radius: 50%;
	width: 35px;
	height: 35px;
	cursor: pointer
}

.line {
	height: 1px;
	width: 45%;
	background-color: #E0E0E0;
	margin-top: 10px
}

.or {
	width: 10%;
	font-weight: bold
} */
.text-sm {
	font-size: 14px !important
}

::placeholder {
	color: #BDBDBD;
	opacity: 1;
	font-weight: 300
}

:-ms-input-placeholder {
	color: #BDBDBD;
	font-weight: 300
}

::-ms-input-placeholder {
	color: #BDBDBD;
	font-weight: 300
}

input, textarea {
	padding: 10px 12px 10px 12px;
	border: 1px solid lightgrey;
	border-radius: 2px;
	margin-bottom: 5px;
	margin-top: 2px;
	width: 100%;
	box-sizing: border-box;
	color: #2C3E50;
	font-size: 14px;
	letter-spacing: 1px
}

input:focus, textarea:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	border: 1px solid #304FFE;
	outline-width: 0
}

button:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	outline-width: 0
}

a {
	color: inherit;
	cursor: pointer
}

.btn-blue {
	background-color: #1A237E;
	width: 150px;
	color: #fff;
	border-radius: 2px
}

.btn-blue:hover {
	background-color: #000;
	cursor: pointer
}

.bg-blue {
	color: #fff;
	background-color: #1A237E
}

@media screen and (max-width: 991px) {
	.logo {
		margin-left: 0px
	}
	.image {
		width: 300px;
		height: 220px
	}
	.border-line {
		border-right: none
	}
	.card2 {
		border-top: 1px solid #EEEEEE !important;
		margin: 0px 15px
	}
}
</style>
</head>
<body>

	<!-- Navbar-->
	<div id="navbar">
		<header>
			<nav class="navbar navbar-expand-lg navbar-dark bg-blue">
				<a class="navbar-brand" href="">Examinia</a>
			</nav>
		</header>
	</div>
	<div class="card card0 border-0">

		<div class="row d-flex">
			<div class="col-lg-6">
				<div class="card1 pb-5">
					<!-- <div class="row">
							<img
								src="/images/8e360d02-2b22-46cb-92be-79ff301af21d_200x200.png"
								class="logo">
						</div> -->
				</div>
			</div>
			<div class="col-lg-6">

				<div class="card2 card border-1 shadow-lg px-4 py-5">
					<form:form method="POST" action="@{/registration_done}"
						class="form-signin">
						<h3>
							<b>Registration Form</b>
						</h3>
						<br>
						<div class="row px-3">
							<label class="mb-1">
								<h6 class="mb-0 text-sm">User Name</h6>
							</label> <input class="mb-4" type="text" name="username"
								placeholder="Enter a valid user name" autofocus />
						</div>

						<div class="row px-3">
							<label class="mb-1" for="role"><h6 class="mb-0 text-sm">Select
									Role</h6></label> <select class="form-control" name="role" id="role">
								<option>select your role</option>
								<option>Student</option>
								<option>Teacher</option>
							</select>
						</div>
						<br>
						<div class="row px-3">
							<label class="mb-1" for="role"><h6 class="mb-0 text-sm">Select
									Institute</h6></label> <select class="form-control" name="institute"
								id="institute">
								<option>select your institute</option>
								<c:forEach var="list" items="${list}">
									<option>${list.institute}</option>
								</c:forEach>
							</select>
						</div>
						<!-- <br>
						<div class="row px-3">
							<label class="mb-1">
								<h6 class="mb-0 text-sm">Password</h6>
							</label> <input type="password" name="password"
								placeholder="Enter password">
						</div> -->
						<br>
						<div class="row mb-3 px-3">
							<button type="submit" class="btn btn-blue text-center">Register</button>
						</div>
					</form:form>
					<div class="row mb-4 px-3">
						<small class="font-weight-bold">Go for Login page <a
							class="text-danger " href="/login">login</a></small>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="page-footer font-small unique-color-dark bg-blue">

		<div class="bg-blue">
			<div class="container">

				<!-- Grid row-->
				<div class="row py-1 d-flex align-items-center">

					<!-- Grid column -->
					<div
						class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
						<h6 class="mb-0">Get connected with us on social networks!</h6>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-6 col-lg-7 text-center text-md-right">

						<!-- Facebook -->
						<a class="fb-ic"> <i class="fab fa-facebook-f white-text mr-4">
						</i>
						</a>
						<!-- Twitter -->
						<a class="tw-ic"> <i class="fab fa-twitter white-text mr-4">
						</i>
						</a>
						<!-- Google +-->
						<a class="gplus-ic"> <i
							class="fab fa-google-plus-g white-text mr-4"> </i>
						</a>
						<!--Linkedin -->
						<a class="li-ic"> <i
							class="fab fa-linkedin-in white-text mr-4"> </i>
						</a>
						<!--Instagram-->
						<a class="ins-ic"> <i class="fab fa-instagram white-text">
						</i>
						</a>

					</div>
					<!-- Grid column -->
				</div>
			</div>
			<!-- Grid row-->


		</div>
		<!-- Footer Links -->
		<div class="container text-center text-md-left mt-5">

			<!-- Grid row -->
			<div class="row mt-3">

				<!-- Grid column -->
				<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

					<!-- Content -->
					<h6 class="text-uppercase font-weight-bold">Examinia</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>Here you can use rows and columns to organize your footer
						content. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

					<!-- Links -->
					<h6 class="text-uppercase font-weight-bold">Developers</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>
						<a href="#!">Akshay R. Rane</a>
					</p>
					<div class="col-md-6 col-lg-7 text-center text-md-right">

						<!-- Facebook -->
						<a class="fb-ic"> <i class="fab fa-facebook-f white-text mr-4">
						</i>
						</a>
						<!-- Twitter -->
						<a class="tw-ic"> <i class="fab fa-twitter white-text mr-4">
						</i>
						</a>
						<!-- Google +-->
						<a class="gplus-ic"> <i
							class="fab fa-google-plus-g white-text mr-4"> </i>
						</a>
						<!--Linkedin -->
						<a class="li-ic"> <i
							class="fab fa-linkedin-in white-text mr-4"> </i>
						</a>
						<!--Instagram-->
						<a class="ins-ic"> <i class="fab fa-instagram white-text">
						</i>
						</a>

					</div>
					<p>
						<a href="#!">Hitesh A. Sonar</a>
					</p>
					<div class="col-md-6 col-lg-7 text-center text-md-right">

						<!-- Facebook -->
						<a class="fb-ic"> <i class="fab fa-facebook-f white-text mr-4">
						</i>
						</a>
						<!-- Twitter -->
						<a class="tw-ic"> <i class="fab fa-twitter white-text mr-4">
						</i>
						</a>
						<!-- Google +-->
						<a class="gplus-ic"> <i
							class="fab fa-google-plus-g white-text mr-4"> </i>
						</a>
						<!--Linkedin -->
						<a class="li-ic"> <i
							class="fab fa-linkedin-in white-text mr-4"> </i>
						</a>
						<!--Instagram-->
						<a class="ins-ic"> <i class="fab fa-instagram white-text">
						</i>
						</a>

					</div>
					<!-- <p>
						<a href="#!">BrandFlow</a>
					</p>
					<p>
						<a href="#!">Bootstrap Angular</a>
					</p> -->

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

					<!-- Links -->
					<h6 class="text-uppercase font-weight-bold">Linkedin Profile</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<!--Google +-->
					<a class="btn-floating btn-lg btn-gplus" type="button"
						role="button"><i class="fab fa-google-plus-g"></i></a>
					<!--Linkedin-->
					<a class="btn-floating btn-lg btn-li" type="button" role="button"><i
						class="fab fa-linkedin-in"></i></a>
					<!--Instagram-->
					<a class="btn-floating btn-lg btn-ins" type="button" role="button"><i
						class="fab fa-instagram"></i></a>
					<p>
						<a href="www.linkedin.com/in/akshay-rane-853b8518b">Akshay
							Rane</a>
					</p>
					<p>
						<a href="https://www.linkedin.com/in/hitesh-sonar-8a130a169">Hitesh
							Sonar</a>
					</p>
					<!-- 	<p>
						<a href="#!">Shipping Rates</a>
					</p>
					<p>
						<a href="#!">Help</a>
					</p> -->

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

					<!-- Links -->
					<h6 class="text-uppercase font-weight-bold">Contact</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>
						<i class="fas fa-home mr-3"></i> Maharashtra, Kalyan, 421306.
					</p>
					<p>
						<i class="fas fa-envelope mr-3"></i> ak.arane1997@gmail.com
					</p>
					<p>
						<i class="fas fa-envelope mr-3"></i> hiteshsonar00@gmail.com
					</p>
					<p>
						<i class="fas fa-phone mr-3"></i> +91 7208733116
					</p>
					<p>
						<i class="fas fa-print mr-3"></i> +91 7021795417
					</p>

				</div>
				<!-- Grid column -->

			</div>
			<!-- Grid row -->

		</div>
		<!-- Footer Links -->

		<!-- Copyright -->
		<!-- <div class="footer-copyright text-center py-3">
			� 2020 Copyright: <a href="https://mdbootstrap.com/">
				MDBootstrap.com</a>
		</div> -->
		<!-- Copyright -->

	</footer>
	<!-- Footer -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>
</html>