<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Contact Us</title>
<link rel="stylesheet" href="web/resource/bootstrap/docs/assets/css/bootstrap.css"/>
<link href="web/resource/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet"/>
<script src="web/resource/bootstrap/docs/assets/js/jquery.js"></script>
<script src="web/resource/bootstrap/docs/assets/js/bootstrap.js"></script>
<style>
		  
		  #mydiv
		  {

		  	position:relative;
		  	width:90%;
		  }
		</style>
		<style>
	#content
	{
		position:relative;
		width:90%;
	}
</style>
<script>
function resetForm(frm)
{
	frm.emailid.value = "";
	frm.content.value = "";
}
function validateForm(frm)
{
	console.log(frm.emailid.value);
	console.log(frm.content.value);
	var res = 0;
	res = res + validateemail(frm.emailid.value);
	if(frm.content.value == "")
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
<body  onload="resetForm(contactsData)">
	<%@include file="header.jsp" %>
<br/>
	<div id="mydiv" class = "container" >
		<hr class="featurette-divider">
      <div class="featurette">
        <img class="featurette-image pull-left" width="200" height="200" src="web/resource/contact.jpg">
        <h2 class="featurette-heading">Contact Us <span class="muted">We are happy to help.</span></h2>
        <p class="lead">Contact Person: Ashish Sharma<br/>Contact No. 9711273127<br/>Address: W-128 Sector 12 Noida 201301<br/>Mail us at <a href="mailto:sharma_ashish_1989@yahoo.com?Subject=Query">sharma_ashish_1989@yahoo.com</a></p>
      </div>
      <br/>
      <br/>
      <div class="featurette">
        <h2 class="featurette-heading">Any Query/Suggestion/Complaints<span class="muted">We are eager to hear from you</span></h2>
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
        <p class="lead">
          <html:form method="post" action="/contactsData.do" styleClass="form-horizontal" onsubmit="return validateForm(this)">
			<div class="control-group">
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
					<html:text property="emailid" styleClass="input-xlarge" styleId="inputEmail"></html:text>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputData">Content</label>
				<div class="controls">
					<html:textarea property="content" styleClass="input-xlarge" styleId="inputData"></html:textarea>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<html:submit styleClass="btn btn-primary">Submit</html:submit>
				</div>
			</div>
		</html:form>
        </p>
      </div>
      <div class="featurette">
        <h2 class="featurette-heading">FAQ's <span class="muted">Common Questions</span></h2>
        </div>
          
      <div class="accordion" id="acc">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"  data-parent="#acc" href="#collapseOne"> Question 1:I own a small business in the neighbouring country and want to expand my business to different countries can i ask you to perform survey for me in diferent different countries? 
						  </a>
					</div>
					<div id="collapseOne" class="accordion-body collapse">
						<div class="accordion-inner">
							Answer: Yes, sure you can.
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#acc" href="#collapseTwo"> Qestion 2:How you perform an online survey? </a>
					</div>
					<div id="collapseTwo" class="accordion-body collapse">
						<div class="accordion-inner">
							Answer: We have some good web technologies in which we get your form filled by user for some small free services from our alliance companies.
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#acc" href="#collapseThree"> Question 3:How in field questionaire survey take place? </a>
					</div>
					<div id="collapseThree" class="accordion-body collapse">
						<div class="accordion-inner">
							Answer: Our executive go door to door for your questinaire to get filled by the appropriate users.
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#acc" href="#collapseFour"> Question 4:Do we get our money back if we are not satisfied by the result? </a>
					</div>
					<div id="collapseFour" class="accordion-body collapse">
						<div class="accordion-inner">
							Answer: Absolutely not, the money is not refundable in that case.Though we will provide you 20% off on second survey if you are not at all satisfied by the previous one.
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#acc" href="#collapseFive"> Question 5:If my survey didn't take place and i want to quit the survey or due to any reason my survey didn't happen, will i get my mony back then? </a>
					</div>
					<div id="collapseFive" class="accordion-body collapse">
						<div class="accordion-inner">
							Answer: Of course, customer satisfaction is most important to us.
						</div>
					</div>
				</div>
			</div>
			</div>
	

	<%@include file="footer.jsp" %>
</body>
</html:html>