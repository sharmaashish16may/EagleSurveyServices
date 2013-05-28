<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Login</title>
<link rel="stylesheet" href="web/resource/bootstrap/docs/assets/css/bootstrap.css"/>
<link href="web/resource/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet"/>
<script src="web/resource/bootstrap/docs/assets/js/jquery.js"></script>
<script src="web/resource/bootstrap/docs/assets/js/bootstrap.js"></script>
<script src = "web/resource/login.js"></script>
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
}
function validateForm(frm)
{
	var res = 0;
	res = res + validateemail(frm.emailid.value);
	if(frm.password.value == "")
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
function validateemail(x)
{
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	  {
		  return 1;
	  }
	else
		{
			return 0;
		}
}
</script>
</head>
<body onload="resetLogin(logingin)">

	<%@include file="header.jsp"%>
	<div class="container" id="content">
	<hr/>
	<img src="web/resource/login.jpg" height="200px"/>
		<html:form method="post" action="/logingin.do" styleClass="form-horizontal" onsubmit="return validateForm(this)">
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
				<div class="controls">
					<html:submit styleClass="btn btn-primary">Log In</html:submit>
				</div>
			</div>
		</html:form>
	</div>


	<%@include file="footer.jsp" %>


</body>
</html:html>