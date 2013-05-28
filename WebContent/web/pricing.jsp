<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Pricing</title>
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
</head>
<body>
	<%@include file="header.jsp" %>
<br/>
	<div id="mydiv" class="container">
		<hr class="featurette-divider">
      <div class="featurette">
        <img class="featurette-image pull-left" width="150" height="150" src="web/resource/pricingback.jpg">
        <h2 class="featurette-heading">Plan & Pricing <span class="muted">Choose any and choose many</span></h2>
        <p class="lead">  
          <br/>
          <br/>
          <br/>
<div class="tabbable tabs-left">
  <ul class="nav nav-tabs">
    <li class="active"><a href="#pane1" data-toggle="tab">Online Survey</a></li>
    <li><a href="#pane2" data-toggle="tab">*On-Field Survey</a></li>
    <li><a href="#pane3" data-toggle="tab">Analysis</a></li>
    <li><a href="#pane4" data-toggle="tab">Development</a></li>
  </ul>
  <div class="tab-content">
    <div id="pane1" class="tab-pane active">
      <u><h4>Online Survey:-</h4></u>
      <table class="table">
        <thead>
          <tr>
          <th>Plan</th>
          <th>Number of Questions</th>
          <th>Number of Response</th>
          <th>Price</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><b>Basic</b></td>
            <td>10</td>
            <td>200</td>
            <td>INR 499/-</td>
          </tr>
          <tr>
            <td><b>Advance</b></td>
            <td>50</td>
            <td>unlimited</td>
            <td>INR 1499/-</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div id="pane2" class="tab-pane">
      <h4><u>Survey at Engineering level:-</u></h4>
      <p>Depend upon the type of subject. To know the exact price of reuired surevey, please <a href="mailto:sharma_ashish_1989@yahoo.com?Subject=Query">write</a> to us.</p>
      <br/>
      <u><h4>Basic Questionaire Survey:-</h4></u>
      <table class="table">
        <thead>
          <tr>
          <th>Number of Questions</th>
          <th>Number of Response</th>
          <th>Price</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>20</td>
            <td>500</td>
            <td>INR 4999/-</td>
          </tr>
        </tbody>
      </table>
      <br/>
      
    </div>
    <div id="pane3" class="tab-pane">
      <h4>Analysis:-</h4>
      <p>By using most advanced analysis tool, some of which are customized by us for optimum result</p>
      <table class="table">
        <thead>
          <tr>
          <th>Type</th>
          <th>Price</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Analysis of our own generated data</td>
            <td>INR 599/-</td>
          </tr>
          <tr>
            <td>Analysis of monthly recorded data</td>
            <td>INR 899/-</td>
          </tr>
          <tr>
            <td>Analysis of yearly recorded data</td>
            <td>INR 2999/-</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div id="pane4" class="tab-pane">
      <h4>Developing New Methodlogy:-</h4>
      <p>It depend upon the nature of problem and man power utilizes in the process, please feel free to <a href="contact.do">Contact Us</a> if you need to develop new methods in any field.</p>
    </div>
  </div><!-- /.tab-content -->
</div>

      </p>
      </div>
      <span class="muted">*Price of service may vary with location of survey</span>
    </div>

	<%@include file="footer.jsp" %>
</body>
</html:html>