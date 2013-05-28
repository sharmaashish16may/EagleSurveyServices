<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Services</title>
<link rel="stylesheet"
	href="web/resource/bootstrap/docs/assets/css/bootstrap.css" />
<link
	href="web/resource/bootstrap/docs/assets/css/bootstrap-responsive.css"
	rel="stylesheet" />
<script src="web/resource/bootstrap/docs/assets/js/jquery.js"></script>
<script src="web/resource/bootstrap/docs/assets/js/bootstrap.js"></script>
<style>
	  		.carousel {      
      left:5%;
      right:5%;
      width:90%;
    }

    .carousel .container {
      position: relative;
      z-index: 0;
      width:auto;
      height:700px;
    }

    .carousel-control {
      height: auto;
      margin-top: auto;
      font-size: 120px;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
      background-color: transparent;
      border: 0;
    }

    .carousel .item {
      height:700px;

    }
    .carousel img {    
      position: absolute;
      top: 5%;     
      width: 100%;
      height: 700px;
    }

    div.carousel-caption {
      position:relative;
      background-color: transparent;
      margin-top: 500px;
    }
    
    .carousel-caption h1,
    .carousel-caption .lead {
      margin: 0;
      line-height: 1.25;
      color: #fff;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
    }
    .carousel-caption .btn {
      margin-top: 50px;
    }
   
</style>
</head>
<body>
	<%
		session.setAttribute("privilege", "0");
	%>
	<%@include file="web/header.jsp" %>
<div id="content">
	<div  class="carousel slide">
		<div id="myCarousel" class="carousel-inner">
			<div class="item active">
				<img src="web/resource/eagle1.jpg" alt="Eagle Survey Services">
				<div class="container">
					<div class="carousel-caption">
						<h1>Who we are?</h1>
						<p class="lead">About Us</p>
						<a class="btn btn-large btn-success" href="about.do">Read...</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="web/resource/service2.jpg" alt="Services Offered">
				<div class="container">
					<div class= "carousel-caption">
						<h1 style="color:green;">Services</h1>
						<p class="lead" style="color:green;">We offered</p>
						<a class="btn btn-large btn-success" href="service.do">Services</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="web/resource/pricyprizer.jpg" alt="PricyPrizer">
				<div class="container">
					<div class="carousel-caption">
						<h1>PricyPrizer</h1>
						<p class="lead">On going survey...</p>
						<a class="btn btn-large btn-success" href="login.do">Sign In</a>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
</div>
<hr>
<%@include file="web/footer.jsp" %>

</body>
</html:html>