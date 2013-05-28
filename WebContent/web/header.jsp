<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
<style>
	 .navbar {
	position: fixed;
	top: 0;
	left: 5%;
	right: 5%;
	z-index: 10;
	margin-top: 0px;
	margin-bottom: -90px;
	/* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}

/* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
	border: 0;
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	-moz-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
}

/* Downsize the brand/project name a bit */
.navbar .brand {
	padding: 14px 20px 16px;
	/* Increase vertical padding to match navbar links */
	font-size: 20px;
	font-weight: bold;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .5);
}

/* Navbar links: increase padding for taller navbar */
.navbar .nav>li>a {
	padding: 15px 20px;
}

/* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
	margin-top: 10px;
}
</style>
</head>
<body>
<div class="navbar-wrapper">
		<!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
		<div class="container">

			<div class="navbar navbar-inverse">
				<div class="navbar-inner">

					<ul class="nav">
						<li><img src="web/resource/eagleprofile1.jpg" width="100px"/></li>
						<li class="active"><html:link styleClass="brand" href="index.do">EagleSurvey</html:link></li>
						<li><html:link href="service.do">Services</html:link></li>
						<li><html:link href="pricing.do">Pricing</html:link></li>
						<li><html:link href="contact.do">Contact</html:link></li>
						<li><html:link href="about.do">About</html:link></li>
					</ul>
					<div class="pull-right" id="logindiv">
						<%
							String privilege = session.getAttribute("privilege").toString();
							if((privilege.equals("1"))||(privilege.equals("2")))
							{
						%>
						<html:link href="index.do" styleClass="btn btn-warning">Log Out</html:link>
						<%
							}
							else
							{								
						%> 
						<html:link href="login.do" styleClass="btn btn-primary">Login</html:link>
						<%
							}
						%>
					</div>
				</div>
			</div>
			<!-- /.navbar -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.navbar-wrapper -->
</body>
</html>