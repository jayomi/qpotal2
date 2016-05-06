<%@page import="com.allianz.qportalapp.controller.FormFieldImpl"%>
<%@page import="com.allianz.qportalapp.model.FormField"%>
<%@page import="com.allianz.qportalapp.controller.FormSegmentImple"%>
<%@page import="com.allianz.qportalapp.model.FormSegment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.allianz.qportalapp.model.FormType" %>
<%@page import="com.allianz.qportalapp.controller.FormTypeImpl"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>list-down forms</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
</head>
<body>

<table class="table table-condensed">
	<thead>
		<tr>
			<th>Form ID</th>
			<th>Form Name</th>
			<th>Form Description</th>
			<th>Department</th>
		</tr>
	</thead>
	 <tbody>
	<%FormTypeImpl formTypeImpl=new FormTypeImpl(); 
		for(FormType ftype : formTypeImpl.getFormList()){
	%>	
			
		<tr style="background-color: #AAACCC;" data-toggle="collapse" data-target=".datasegment" class="accordion-toggle">	
			<td><button class="btn btn-default btn-xs"><span class="glyphicon glyphicon-eye-open"></span></button></td>			
			<td><%=ftype.getFormId()%></td>
			<td><%=ftype.getFormName() %></td>
			<td><%=ftype.getFormDescription()%></td>
			<td><%=ftype.getDepartment()%></td>
		</tr>
			
	<% FormSegmentImple formSegmentImple=new FormSegmentImple();
		for(FormSegment segment : formSegmentImple.getFormSegmentByFormId(ftype.getFormId())){
	%>
			
			<tr style="background-color: orange;" data-toggle="collapse" data-target=".datafield" class="accordion-toggle">
				<td><button class="btn btn-default btn-xs"><span class="glyphicon glyphicon-eye-open"></span></button></td>
				<td ><div class="datasegment"><%=segment.getSegmentId() %></div></td>
				<td ><div class="datasegment"><%=segment.getSegmentLabel() %></div></td>
				<td ><div class="datasegment"><%=segment.getSegmentDescription()%></div></td>
			</tr>
				
	<% FormFieldImpl formFieldImpl=new FormFieldImpl();
	%>			
		
			
	<%
		for(FormField field : formFieldImpl.getFieldByFormIdAndSegmentId(ftype.getFormId(), segment.getSegmentId())){
	%>
		
		<tr style="background-color: pink;">
			<td></td>
			
			<td ><div class="datafield"><%=field.getFieldName() %></div></td>
			<td ><div class="datafield"><%=field.getFieldType() %></div></td>
			<td ><div class="datafield"><%=field.getPredefineValue()%></div></td>
		</tr>
					
					
	<%} %> <!-- end of formField -->
				
				
	<%} %> <!-- end of form segment -->
			
			 
	<%} %> <!-- end of form -->
		
	</tbody>
</table>	

<script src="js/jquery-2.2.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>