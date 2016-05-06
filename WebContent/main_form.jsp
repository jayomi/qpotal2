<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MainForm</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
<div class="container"> 

<form action="start" class="form-horizontal" role="form">

  <div class="form-group">
    <label class="control-label col-sm-2">Client Name: </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="clientName" placeholder="Enter name">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Date: </label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="clientDate" placeholder="Enter date">
    </div>
  </div>
  <div class="dropdown">
	Form Type:	  
	    	<select name="formtype" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
	    		<span class="caret"></span>
	    		<option value="GeneralInformation">GeneralInformation</option>
	    		<option value="Balance Sheet">Balance Sheet</option>
	    		<option value="3">Cash Needs</option>
	    		<option value="4">Income Needs</option>
	    		<option value="5">At Retirement</option>
	    		<option value="6">Distribution</option>	    		
	    	</select>   	   
  	</div>
  
	  <div class="form-group"> 
	    <div class="col-sm-offset-2 col-sm-10">
	      <input type="submit" name="submit" class="btn btn-default"/>
	    </div>
	  </div>
	</form>

	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>