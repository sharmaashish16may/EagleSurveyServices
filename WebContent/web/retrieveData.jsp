<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Retrieve Data</title>
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
	function submitForm(frm)
	{
		frm.submit();
	}
</script>
</head>
<body  onload="submitForm(retrieveData)">

	<%@include file="header.jsp" %>
	<div class = "container" id ="content">
	<hr><br/><br/>
	<html:form method="post" action="/retrieveData.do" styleClass="form-horizontal">
			<div class="control-group">
				<label class="control-label" for="inputEmail">Fetching Data </label>
				<div class="progress progress-striped active">
  					<div class="bar" style="width: 100%;"></div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<html:hidden property="privilege" styleId="inputprivilege" value="<%= privilege %>"></html:hidden>
					<!-- value of privilege is got from header.jsp -->
				</div>
			</div>
		</html:form>
	</div>
	<%@include file="footer.jsp" %>


</body>
</html:html>