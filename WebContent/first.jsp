<%@page import="com.allianz.qportalapp.model.PredefineValue"%>
<%@page import="com.allianz.qportalapp.controller.PredefineValueImpl"%>
<%@page import="org.apache.catalina.manager.util.SessionUtils"%>
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
<title>Welcome Allianz</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-2.2.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<script type="text/javascript">

function arrangeSno() 
    {
           var i=0;
            $('#segmentTable tr').each(function() {
                $(this).find(".sNo").html(i);
                i++;
               
             }); 
    }

 
$(document).ready(function(){ 
	$('#addSegment').click(function(){
       var sno=$('#segmentTable tr').length;
           trow= "<tr><td class='sNo'>"+sno+"</td>"+
          		 "<td><select name='segmentId'><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option><option value='6'>6</option><option value='7'>7</option></select></td>"+
               "<td><input name='segmentName' type='text'></td>"+
               "<td><input name='segmentDescription' type='text'></td>"+	                          
              "<td><button type='button' class='removeSegmentButton'>Remove</button></td>"+
             "</tr>"; 
             
          $('#segmentTable').append(trow);          
        });
	
	
	
	$('#addQuestion').click(function(){			
		 var sno=$('#segmentTable tr').length;
		 /* var segmentId= document.getElementsByName('segmentId')[0].value; */
		 
		 trow="<tr><td class='sNo'>"+sno+"</td>"+
		 "<td><select name='question_segmentId'><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option><option value='6'>6</option><option value='7'>7</option></select></td>"+
		 "<td><input name='QuestionName' type='text'></td>"+		 
		 "<td><select id='questionType' name='questionType'>"+
		 "<option value='textFeild'>Text Feild</option>"+
		 "<option value='textArea'>TextArea</option>"+
		 "<option value='dropDown'>Drop Down List</option>"+
		 "<option value='checkBox'>Check Box</option>"+
		 "<option value='radioButton'>Radio Button</option>"+
		 "</select>"+
		 "</td>"+		 
		 "<td><label>Is there pre define values?</label></td>"+		 
		 "<td><input type='radio' name='isPredefineValue' onclick='showPreValueYes()' value='yes' />yes<input type='radio' name='isPredefineValue' value='no' /></td>"+
		 "<td><span id='responce'></span><div class='controls' id='show'><form><input type='text' name='text1'><input type='button' onclick='addInput()'/><input type='submit' name='add' value='submit'></form></div>"+		 
		 "<td><button type='button' class='removeQestionButton'>Remove</button></td></tr>";
        $('#segmentTableBody').append(trow);
	 });
 }); 
	 
	$(document).on('click', 'button.removeSegmentButton', function () {
	       $(this).closest('tr').remove();
	       arrangeSno();
	     return false;
	 });		
	
	$(document).on('click', 'button.removeQestionButton', function () {
	       $(this).closest('tr').remove();
	       arrangeSno();
	     return false;
	 });	
	

	function showPreValueYes(){
		$("#show").hide();
	    $("input[type='radio']").change(function () {

	        if ($(this).val() == "yes") {
	            $("#show").show();
	        } else {
	            $("#show").hide();
	        }
	    });
		}
	
	$( document ).ready(function() {

		$("#show").hide();
		$("#show").prop('checked', false);
	});

	var countBox =1;
	var boxName = 0;
	function addInput()
	{
		var boxName="textBox"+countBox; 
		document.getElementById('responce').innerHTML+='<br/><input type="text" id="'+boxName+'" value="'+boxName+'" "  /><br/>';
	    countBox += 1;
	}
 
	
</script>
</head>
<body>
	
	
	Form Name: ${form_Name}<br>
	Form ID: <%= session.getAttribute( "formIndex" ) %>
	<%Object formIndex=session.getAttribute("formIndex");
		int form_Index=(int)formIndex;
	%>
	<form action="FormSegmentController">
	
	<table id="segmentTable" class="table">
		<thead>Main table</thead>
		<tbody id="segmentTableBody">
			
			<tr>
					<td>S.No</td>
					<td>segment Id</td>
	           	 	<td>Segment Name</td>
	            	<td>SegmentDescription</td>             	
			</tr>								
			
		</tbody>
	</table>
	
	
	<div>		
		<br/>
	    <input id="addSegment" type="button" value="Add Segment">
	    <input id="addQuestion" type="button" value="Add Question">
	    <br><input type="submit" value="Submit">	
	</div>
	
	</form> 

</body>
</html>