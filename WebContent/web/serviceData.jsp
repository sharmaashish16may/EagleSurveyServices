<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
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
</head>
<body>

	<%@include file="header.jsp"%>
	<div class="container" id="content">
	<hr/><hr/>
		<%
			String[] mainHeader = (String[])request.getAttribute("mainHeader");
			String[] tblHeader = (String[])request.getAttribute("tblHeader");
			ArrayList<String[]> serviceDataMain = (ArrayList<String[]>)request.getAttribute("serviceDataMain");
			ArrayList<String[]> serviceDatatbl = (ArrayList<String[]>)request.getAttribute("serviceDatatbl");
		%>
		<h1>Service Summarized Information</h1>
		<table class="table">
			<tr>
			<%
			for(int i = 0;i<mainHeader.length;i++)
			{
				out.println("<th>"+mainHeader[i]+"</th>");
			}
			%>
			</tr>		
			<%
			for(int i=0;i<serviceDataMain.size();i++)
			{
				out.println("<tr>");
				String[] temp = serviceDataMain.get(i);
				for(int j=0;j<temp.length;j++)
				{
					out.println("<td>"+temp[j]+"</td>");
				}
				out.println("</tr>");
			}
			%>
		</table>
		<h1>Service Recorded Information</h1>
		<table class="table">
			<tr>
			<%
			for(int i = 0;i<tblHeader.length;i++)
			{
				out.println("<th>"+tblHeader[i]+"</th>");
			}
			%>
			</tr>
			<%
			for(int i=0;i<serviceDatatbl.size();i++)
			{
				out.println("<tr>");
				String[] temp = serviceDatatbl.get(i);
				for(int j=0;j<temp.length;j++)
				{
					out.println("<td>"+temp[j]+"</td>");
				}
				out.println("</tr>");
			}
			%>
		</table>
	</div>
	<%@include file="footer.jsp" %>


</body>
</html:html>