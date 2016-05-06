<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="javax.swing.JPanel" %>
<%@ page import="javax.swing.JFrame" %>
<%@ page import="javax.swing.JDialog" %>
<%@ page import="javax.swing.JLabel" %>
<%@ page import="javax.swing.JButton" %>
<%@ page import="java.awt.event.ActionEvent" %>
<%@ page import="java.awt.event.ActionListener" %>
<%@ page import="javax.swing.JOptionPane" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CreateGI</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<%--
<script type="text/javascript">
		function headerbuttonFunction() {
			var headername=prompt("Enter Header title", "header heare");
			var numb=prompt("number", "number of header");
			if(headername!=null){
				document.getElementById("headerID").innerHTML=headername;
				
			}
			//return headername;
		}
	</script>
 --%>
 	
</head>
<body>

	<div class="container">  				
				<table class="table" id="main_table">
					
          				<thead>
          					<th></th>
          					<th></th>
          					
          				</thead>
          				<tbody>
          					<tr>
          					<td>
          						<table class="table" id="left_subtable" border="1" width="30">
								<thead> 
									<th>tabel 1</th>
																
								</thead>
								<tbody>
								<form action="CreateGeneralinformationForm" class="form-horizontal" role="form">
									<tr><td><input type="submit" value="Header" name="headerbutton" onclick="headerbuttonFunction();"></td></tr>
									<tr><td><input type="submit" value="Label" name="labelbutton"></td></tr>
									<tr><td><input type="submit" value="Text Feild" name="textfeildbutton"></td></tr>	
									<tr><td><input type="submit" value="Send" name="dataelementsubmited"></td></tr>			
								</form>								
								</tbody>
							</table>
          					</td>
          					<td>
          						<table class="table" id="right_subtable" align="left" border="1" width="70">
									<thead> 
										<th>tabel 2</th>											
									</thead>
									<tbody>
										<tr><td><h2><p id="headerID">Header:<%=request.getAttribute("headerTitle2") %></p></h2></td></tr>
									</tbody>
								</table>
          					</td>
          					</tr>          					
          				</tbody>						
			</table>
		
	</div>
	
	<form class="form-horizontal">
		<%-- JButton jButton; %>
		<%--			 	
			 	if (request.getParameter("header")!=null){--%>
			 		<!--  Header NO: <input type="text" value="enter header number" name="headernumber"> 
			 		Header:  <input type="text" value="enter header value" name="headervalue">-->	
			 		
			 	<%-- }
			 	if (request.getParameter("label")!=null){--%>
			 	<!--  Label No: <input type="text" value="enter label number" name="labelnumber">
			 	Label:  <input type="text" value="enter label value" name="labelvalue">	-->
			 <%-- }
			 	
				--%>
				
	</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>