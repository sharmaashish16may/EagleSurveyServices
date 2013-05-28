<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey Admin Page</title>
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
	<hr>
	<br/><br/>
	<div class = "container" id ="content">
		<div class="tabbable tabs-left">
		  <ul class="nav nav-tabs">
		    <li class="active"><a href="#pane1" data-toggle="tab">Service's Summary</a></li>
		    <li><a href="#pane2" data-toggle="tab">Client's Summary</a></li>
		    <li><a href="#pane3" data-toggle="tab">Employee's info</a></li>
		    <li><a href="#pane4" data-toggle="tab">Client's Query/Suggestion/Complaints</a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="pane1" class="tab-pane active">
		      <u><h4>Service's Summary:-</h4></u>
		      <table class="table table-striped">
		        <thead>
		          <tr>
		          <th>ServiceID</th>
		          <th>Service Name</th>
		          <th>ClientID</th>
		          <th>Service Status</th>
		          <th>Starting date</th>
		          <th>End date</th>
		          <th>Service Type</th>
		          <th>Notes</th>
		          </tr>
		        </thead>
		        <tbody>
		         	<%
		         	ArrayList<String[]> str = (ArrayList<String[]>)request.getAttribute("serviceSummary");
		         	for(int i = 0; i < str.size();i++)
		         	{
		         		String[] s = str.get(i);
		         		%><tr><td><html:form method='post' action='/serviceData.do'><html:hidden property="serviceId" value='<%=s[0]%>'/><html:submit styleClass='btn btn-primary' value='<%=s[0]%>'/></html:form></td>
		         		<%
		         		out.println("<td>" +s[1]+"</td>");
		         		out.println("<td>" +s[2]+"</td>");
		         		out.println("<td>" +s[3]+"</td>");
		         		out.println("<td>" +s[4]+"</td>");
		         		out.println("<td>" +s[5]+"</td>");
		         		out.println("<td>" +s[6]+"</td>");
		         		out.println("<td>" +s[7]+"</td></tr>");
		         	}
		         	%>
		        </tbody>
		      </table>
		    </div>
		    <div id="pane2" class="tab-pane">
		      <u><h4>Client's Summary:-</h4></u>
		      <table class="table table-striped">
		        <thead>
		          <tr>
		          <th>ClientID</th>
		          <th>Client Name</th>
		          <th>Address</th>
		          <th>Contact</th>
		          <th>Total Amount</th>
		          <th>Total Paid</th>
		          </tr>
		        </thead>
		        <tbody>
		         	<%
		         	ArrayList<String[]> str2 = (ArrayList<String[]>)request.getAttribute("clientSummary");
		         	for(int i = 0; i < str2.size();i++)
		         	{
		         		String[] s = str2.get(i);
		         		out.println("<tr><td>" +s[0]+"</td>");
		         		out.println("<td>" +s[1]+"</td>");
		         		out.println("<td>" +s[2]+"</td>");
		         		out.println("<td>" +s[3]+"</td>");
		         		out.println("<td>" +s[4]+"</td>");
		         		out.println("<td>" +s[5]+"</td></tr>");
		         	}
		         	%>
		        </tbody>
		      </table>
		      
		    </div>
		    <div id="pane3" class="tab-pane">
		      <u><h4>Employee's Info:-</h4></u>
		      <table class="table table-striped">
		        <thead>
		          <tr>
		          <th>Employee Email Id</th>
		          <th>Password</th>
		          <th>service Id(Associated with)</th>
		          <th>Privileges</th>
		          </tr>
		        </thead>
		        <tbody>
		         	<%
		         	ArrayList<String[]> str3 = (ArrayList<String[]>)request.getAttribute("employee");
		         	for(int i = 0; i < str3.size();i++)
		         	{
		         		String[] s = str3.get(i);
		         		out.println("<tr><td>" +s[0]+"</td>");
		         		out.println("<td>" +s[1]+"</td>");
		         		out.println("<td>" +s[2]+"</td>");
		         		out.println("<td>" +s[3]+"</td></tr>");
		         	}
		         	%>
		        </tbody>
		      </table>
		      <a href="addUser.do" class="btn btn-primary">Add new user</a>
		    </div>
		    <div id="pane4" class="tab-pane">
		      <u><h4>Complaints/Query:-</h4></u>
		      <table class="table table-striped">
		        <thead>
		          <tr>
		          <th>Email Id</th>
		          <th>Content</th>
		          <th>Post Date</th>
		          </tr>
		        </thead>
		        <tbody>
		         	<%
		         	ArrayList<String[]> str4 = (ArrayList<String[]>)request.getAttribute("query");
		         	for(int i = 0; i < str4.size();i++)
		         	{
		         		String[] s = str4.get(i);
		         		out.println("<tr><td>" +s[0]+"</td>");
		         		out.println("<td>" +s[1]+"</td>");
		         		out.println("<td>" +s[2]+"</td></tr>");
		         	}
		         	%>
		        </tbody>
		      </table>
		    </div>
		  </div><!-- /.tab-content -->
		</div>
	</div>
	

	<%@include file="footer.jsp" %>


</body>
</html:html>