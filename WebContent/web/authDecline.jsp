<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Invalid User</title>
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

	<%@include file="header.jsp"%>
	<div class="container" id="content">
		<hr/>
		<img src="web/resource/accessdenied.jpg" height="200px"/>
		<br/>
		<br/>
		The Email Id and password not matched, please try again <html:link href="login.do">Login</html:link>.
		<br/>
		<span class="muted">You can contact the system administrator to provide you the login id and password</span>
	</div>

	<%@include file="footer.jsp" %>


</body>
</html:html>