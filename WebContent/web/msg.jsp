<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Message</title>
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
<script>
	function backClicked()
	{
		window.history.back()
	}
</script>
</head>
<body  onload="submitForm(retrieveData)">

	<%@include file="header.jsp" %>
	<div class = "container" id ="content">
	<hr><br/><br/>
	<%
		String msg = request.getAttribute("msg").toString();
		out.println("<h2>"+msg+"</h2>");
	%>
	<br/>
	<html:link styleClass="btn btn-inverse" onclick="backClicked()">Back</html:link>
	</div>
	<%@include file="footer.jsp" %>


</body>
</html:html>