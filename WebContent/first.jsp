<%@page import="com.allianz.qportalapp.model.PredefineValue"%>
<%@page import="com.allianz.qportalapp.controller.PredefineValueImpl"%>
<%@page import="org.apache.catalina.manager.util.SessionUtils"%>
<%@page import="com.allianz.qportalapp.controller.FormFieldImpl"%>
<%@page import="com.allianz.qportalapp.model.FormField"%>
<%@page import="com.allianz.qportalapp.controller.FormSegmentImple"%>
<%@page import="com.allianz.qportalapp.model.FormSegment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.allianz.qportalapp.model.FormType" %>
<%@page import="com.allianz.qportalapp.controller.FormTypeImpl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Allianz</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-2.2.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<script type="text/javascript">

window.onload=function(){
	$(".show").hide();
}

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
		 "<td><select name='isPredefineValue' class='isPredefineValue'>"+
			"<option value='c'>select</option>"+
			"<option value='y'>yes</option>"+
			"<option value='n'>no</option>"+
			"</select></td>"+
		 "<td>"+
		 	"<div id='show'>"+
			 	"<label>Add pre-define Answer</label>"+
				    "<div class='multi-field-wrapper'>"+
				      "<div class='multi-fields'>"+
				        "<div class='multi-field'>"+
				          "<input type='text' name='answerArray[]'>"+
				          "<button type='button' class='remove-field'>Remove</button>"+
				        "</div>"+
				      "</div>"+
				    "<button type='button' class='add-field' onclick='addNew()'>Add Answer</button>"+
				 "</div>"+
			 "</div>"+
		 "</td>"+ 
		 "<td><button type='button' class='removeQestionButton'>Remove</button></td></tr>";
		 
        $('#segmentTableBody').append(trow);
	 });
	
	
	/* $('.isPredefineValue').click(function(){
	//function showPreValueYes(){
		
	    $("input[type='radio']").change(function () {

	        if ($(this).val() == 'yes') {
	            $('#show').show();
	        } else {
	            $('#show').hide();
	        }
	    });
	}); */
	
	$("select").change(function(){
		$(this).find('option:selected').each(function(){
			if($(this).attr('value')=='y'){
				/*$(".box").not(".show").hide();*/
				$('.show').show();
			}
			else $('.show').hide();
		});
	}).change();

	
 }); 

function addNew(){
			$('.multi-field-wrapper').each(function() {
			    var $wrapper = $('.multi-fields', this);
			    //$(".add-field", $(this)).click(function(e) {
			        $('.multi-field:first-child', $wrapper).clone(true).appendTo($wrapper).find('input').val('').focus();
			    //});
			    $('.multi-field .remove-field', $wrapper).click(function() {
			        //if ($('.multi-field', $wrapper).length>0)
			            $(this).parent('.multi-field').remove();
			    });
			});
	}
		 
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
	    <input id="addSegment" type="button" value="Add Segment" name="addSegment">
	    <input id="addQuestion" type="button" value="Add Question" name="addQuestion">
	    <br><input type="submit" value="Submit">	
	</div>
	
	</form> 

</body>
</html>