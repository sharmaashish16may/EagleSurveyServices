<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eagle-Survey PricyPrizer Product Loader</title>
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
function resetForm(frm)
{
	frm.store.value = "";
	frm.productId.value = "";
	frm.price.value = "";
	frm.notes.value = "";
	frm.productName.value = "";
	frm.productDesc.value = "";
	frm.selStore.selectedIndex =-1;
	frm.selProductId.selectedIndex = -1;
	
}
function validateForm(frm)
{
	var res = 0;
	if(frm.storeName.value == "")
		res++;
	if(frm.productId.value == "")
		res++;
	if(frm.price.value == "")
		res++;
	if(frm.price.value > 0)
		res++;
	alert(res);
	if(res > 0)
	{
		alert("false");
		return false;
	}
	else
	{
		alert("true");
		return true;
	}
}
function comboFunc(sel, txt)
{
	var x = sel.selectedIndex;
    txt.value = sel.options[x].text;
}
</script>
</head>
<body onload="resetForm(productLoader)">

	<%@include file="header.jsp"%>
	<div class="container" id="content">
	<hr/><br/><br/>
	<h1>Product Loader</h1><h3 class="muted">Pricy Prizer</h3>
		<html:form method="post" action="/productLoader.do" styleClass="form-horizontal" onsubmit="return validateForm(this)">
			<div class="control-group">
				<label class="control-label" for="inputStore">Store Name</label>
				<div class="controls">
					<html:text property="store" styleClass="input-xlarge" styleId="inputStore"></html:text>
				</div>
				<div class="controls">
				<select onchange="comboFunc(this, store)" name="selStore">
				<%
					ArrayList<String> strStore = (ArrayList<String>)request.getAttribute("strStore");
					for(int i = 0;i<strStore.size();i++)
					{
						out.println("<option value='"+strStore.get(i)+"'>"+strStore.get(i)+"</option>");					
					}
				%>
				</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputBarcode">Product Barcode</label>
				<div class="controls">
					<html:text property="productId" styleClass="input-xlarge" styleId="inputBarcode"></html:text>
				</div>
				<div class="controls">
				<select onchange="comboFunc(this, productId)" name="selProductId">
				<%
					ArrayList<String> strProductId = (ArrayList<String>)request.getAttribute("strProductId");
					for(int i = 0;i<strProductId.size();i++)
					{
						out.println("<option value='"+strProductId.get(i)+"'>"+strProductId.get(i)+"</option>");					
					}
				%>
				</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPrice">Price</label>
				<div class="controls">
					<html:text property="price" styleClass="input-xlarge" styleId="inputPrice"></html:text>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputNotes">Notes</label>
				<div class="controls">
					<html:text property="notes" styleClass="input-xlarge" styleId="inputNotes"></html:text>
				</div>
			</div>
			<div class="muted">Fill these field if you are adding new product....</div>
			<div class="control-group">
				<label class="control-label" for="inputProductName">Product Name</label>
				<div class="controls">
					<html:text property="productName" styleClass="input-xlarge" styleId="inputProductName"></html:text>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputProductDesc">Product Description</label>
				<div class="controls">
					<html:text property="productDesc" styleClass="input-xlarge" styleId="inputProductDesc"></html:text>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<html:submit styleClass="btn btn-primary">Submit</html:submit>
					<html:reset styleClass="btn btn-primary" onclick="resetForm(productLoader)">Reset</html:reset>
				</div>
			</div>
		</html:form>
	</div>


	<%@include file="footer.jsp" %>


</body>
</html:html>