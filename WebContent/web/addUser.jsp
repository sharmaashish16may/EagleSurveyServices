<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Registration page</title>
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
function resetLogin(frm)
{
	frm.emailid.value = "";
	frm.password.value = "";
	frm.password2.value = "";
}
function validateForm(frm)
{
	var res = 0;
	res = res + validateemail(frm.emailid.value);
	if(frm.password.value == "")
		{
		res++;
		}
	if(frm.password.value != frm.password2.value)
		{
		res++;
		}
	if(res > 0)
		{
		return false;
		}
	else
		{
		return true;
		}
}
function checkPassword(frm)
{
	if(frm.password.value ==frm.password2.value)
	{
		frm.password.focus();
	}
	
}
</script>
</head>
<body>

	<%@include file="header.jsp" %>
	<hr>
	<br/><br/>
	<div class = "container" id ="content">
	<hr/>
	<h1>Add New User</h1>
	<%
       try
       {
       	if(request.getAttribute("status").equals("done"))
       	{
       		out.println("<div class='muted'>Data saved successfully</div>");
       	}
       	else if(request.getAttribute("status").equals("notdone"))
       	{
       		out.println("<div class='muted'>Data saving failed</div>");
       	}
       }
       catch(Exception ex)
       {
       	//doing nothing
       }
     %>
     
	<html:form method="post" action="/registration.do" styleClass="form-horizontal" onsubmit="return validateForm(this)">
		<div class="control-group">
			<label class="control-label" for="inputEmail">Email</label>
			<div class="controls">
				<html:text property="emailid" styleClass="input-xlarge" styleId="inputEmail"></html:text>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Password</label>
			<div class="controls">
				<html:password property="password" styleClass="input-xlarge" styleId="inputPassword"></html:password>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword2">Confirm Password</label>
			<div class="controls">
				<html:password property="password2" styleClass="input-xlarge" styleId="inputPassword2"></html:password>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputserviceId">Service Assigned to</label>
			<div class="controls">
				<html:select property="serviceId" styleClass="input-xlarge" styleId="inputserviceId">
					<html:option value="service1">Service1</html:option>
					<html:option value="service1">Service2</html:option>
				</html:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPrivilege">Privileges</label>
			<div class="controls">
				<html:radio property="privilege" value = "2" styleClass="input-xlarge" styleId="inputPrivilege">Executive</html:radio>
				<html:radio property="privilege" value = "1" styleClass="input-xlarge" styleId="inputPrivilege">Administrator</html:radio>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<html:submit styleClass="btn btn-primary">Add</html:submit>
				<html:submit styleClass="btn btn-inverse">Reset</html:submit>
			</div>
		</div>
	</html:form>
	</div>
	<%@include file="footer.jsp" %>


</body>
</html:html>