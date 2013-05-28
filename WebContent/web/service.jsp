<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Services</title>
<link rel="stylesheet" href="web/resource/bootstrap/docs/assets/css/bootstrap.css"/>
<link href="web/resource/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet"/>
<script src="web/resource/bootstrap/docs/assets/js/jquery.js"></script>
<script src="web/resource/bootstrap/docs/assets/js/bootstrap.js"></script>
<style>
	#content
	{
		position:relative;
		width:90%;
	}
</style>
</head>
<body>

	<%@include file="header.jsp" %>
	<div class = "container" id ="content">
	<hr>
	<hr class="featurette-divider">

      <div class="featurette">
        <img class="featurette-image pull-right" src="web/resource/onlinesurvey.jpg" height="300px" width="300px">
        <h2 class="featurette-heading">Online survey</h2>
        <p class="lead">we provide the facility of online survey in almost each and every field. We cover almost all the major users of internet, users of different background and different age group too.</p>
      </div>
		<br/><br/>
      <hr class="featurette-divider">

      <div class="featurette">
        <img class="featurette-image pull-left" src="web/resource/onfieldsurvey.jpg" height="300px" width="300px">
        <h2 class="featurette-heading">On field survey</h2>
        <p class="lead">We provide the facility of On-field survey for almost every product or services. We cover most of the developed and developing countries, also cover every age group people for better analysis process.</p>
      </div>
		<br/><br/><br/><br/>
      <hr class="featurette-divider">

      <div class="featurette">
        <img class="featurette-image pull-right" src="web/resource/analysis.jpg" height="300px" width="300px">
        <h2 class="featurette-heading">Analytical process</h2>
        <p class="lead">Data generated in the survey's used to analyze the status, goodwill and many other thing of the products or services. We do the analysis process with best available tool in the market and some of our custom made tool.</p>
      </div>
		<br/><br/>
      <hr class="featurette-divider">
      
      <div class="featurette">
        <img class="featurette-image pull-left" src="web/resource/calculator.jpg" height="300px" width="300px">
        <h2 class="featurette-heading">Development <span class="muted">of different calculation methods</span></h2>
        <p class="lead">We have a team of scientist, analyst, economist who work day and night to provide best calculation methods for different process according to need. We provide the different methods of generating reports, and calculating the annual profit so that the optimum results can be obtained by comparing each of them together.</p>
      </div>

      <hr class="featurette-divider">
		<a href="contact.do">Contact Us</a> for the best services offered in the world.
	</div>
	

	<%@include file="footer.jsp" %>


</body>
</html:html>