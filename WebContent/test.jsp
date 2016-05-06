<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


</script>

<script type="text/javascript">
		function createRow() {
		$("#datarow").clone(true).appendTo("#bodyOfnewElementTable");
		//$('#bodyOfnewElementTable').append($("#datarow").html());		
	}
</script>

<script type="text/javascript">
	function addComboBox() {
		var textb = document.getElementById("txtCombo");
		var combo = document.getElementById("comboBox");
		var option = document.createElement("option");
		option.text = textb.value;
		option.value = textb.value;
		try {
			combo.add(option, null); //Standard 
		} catch (error) {
			combo.add(option); // IE only
		}
		textb.value = "";
	}

	function getSelectedValue(statusOfselectType) {

		if (statusOfselectType == "dropDown") {
			$('#configurationModal').modal('show');			
		}
		
		else if (statusOfselectType == "textArea") {
			$('#configurationModal2').modal('show');
			
		}		
		else if (statusOfselectType == "textFeild") {
			$('#configurationModal3').modal('show');			
		}
		else if (statusOfselectType == "checkBox") {
			$('#configurationModal4').modal('show');
		}
		else{
			$('#configurationModal5').modal('show');
		}
		
	}
</script>

</head>
<body>
<form action="start">
	<div id="dataSet1">	
		<table id="newElementTable" class="table">
			<thead>
				<th>Label</th>
				<th>Field Type</th>
				<th>Visibility</th>
				<th>Variable</th>
				
			</thead>
			<tbody id="bodyOfnewElementTable">
				<tr id="rowID">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div id="dataSet2">
		<table id="addNewElementTable" class="table">
			<thead>
				<th>Label</th>
				<th>Type</th>
				<th>Visibility</th>
				<th>Variable</th>
				<th>Add</th>

			</thead>
			<tbody>
				<tr id="datarow1">
					<td><input id="labelName" type="text" value="LabelName" name="labelName"/></td>
					<td><select id="selectType" name="typeName"
						onchange="getSelectedValue(this.value)">
							<option value="textFeild">Text Feild</option>
							<option value="textArea">TextArea</option>
							<option value="dropDown">Drop Down List</option>
							<option value="checkBox">Check Box</option>
							<option value="radioButton">Radio Button</option>
					</select>
						</td>
					<td><select id="visibility" name="Visibility">
							<option value="textFeild">Required</option>
							<option value="button">Optional</option>
					</select></td>
					<td><input id="variableName" type="text" name="variableName"
						value="department" /></td>
					<td><input type="button" id="addNewElementButton"
						name="addElement" value="Add" onclick="createRow()"></td>
				</tr>
				
				<tr id="datarow2">
					<td><input id="labelName" type="text" value="LabelName" /></td>
					<td><select id="selectType" name="typeName"
						onchange="getSelectedValue(this.value)">
							<option value="textFeild">Text Feild</option>
							<option value="textArea">TextArea</option>
							<option value="dropDown">Drop Down List</option>
							<option value="checkBox">Check Box</option>
							<option value="radioButton">Radio Button</option>
					</select>
						<!--  <button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#configurationModal">Open Modal</button>--></td>
					<td><select id="visibility" name="Visibility">
							<option value="textFeild">Required</option>
							<option value="button">Optional</option>
					</select></td>
					<td><input id="variableName" type="text" name="variableName"
						value="department" /></td>
					<td><input type="button" id="addNewElementButton"
						name="addElement" value="Add" onclick="createRow()"></td>
				</tr>
				
				<tr id="datarow3">
					<td><input id="labelName" type="text" value="LabelName" /></td>
					<td><select id="selectType" name="typeName"
						onchange="getSelectedValue(this.value)">
							<option value="textFeild">Text Feild</option>
							<option value="textArea">TextArea</option>
							<option value="dropDown">Drop Down List</option>
							<option value="checkBox">Check Box</option>
							<option value="radioButton">Radio Button</option>
					</select>
						<!-- <button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#configurationModal">Open Modal</button> --></td>
					<td><select id="visibility" name="Visibility">
							<option value="textFeild">Required</option>
							<option value="button">Optional</option>
					</select></td>
					<td><input id="variableName" type="text" name="variableName"
						value="department" /></td>
					<td><input type="button" id="addNewElementButton"
						name="addElement" value="Add" onclick="createRow()"></td>
				</tr>
				
				<tr id="datarow4">
					<td><input id="labelName" type="text" value="LabelName" /></td>
					<td><select id="selectType" name="typeName"
						onchange="getSelectedValue(this.value)">
							<option value="textFeild">Text Feild</option>
							<option value="textArea">TextArea</option>
							<option value="dropDown">Drop Down List</option>
							<option value="checkBox">Check Box</option>
							<option value="radioButton">Radio Button</option>
					</select>
						<!-- <button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#configurationModal">Open Modal</button> --></td>
					<td><select id="visibility" name="Visibility">
							<option value="textFeild">Required</option>
							<option value="button">Optional</option>
					</select></td>
					<td><input id="variableName" type="text" name="variableName"
						value="department" /></td>
					<td><input type="button" id="addNewElementButton"
						name="addElement" value="Add" onclick="createRow()"></td>
					</tr>
				
			</tbody>
		</table>
	</div>	

		<!-- Modal -->
		<div class="modal fade" id="configurationModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
					</div>
					<div class="modal-body">
						<p>Add value to Drop down List: <input type="text" name="txtCombo" id="txtCombo" /></p>
						<p><input type="button" value="Add"
						onclick="addComboBox()"><br />Dropdown list: <select
						name="comboBox" id="comboBox"><option>select</option></select></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>	
							
			</div>
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="configurationModal2" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header 2</h4>
					</div>
					<div class="modal-body">
						
						<p><textarea rows="4" cols="80"></textarea> </p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>							
			</div>
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="configurationModal3" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header 2</h4>
					</div>
					<div class="modal-body">
						
						<p>Text:</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>							
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="configurationModal4" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header 2</h4>
					</div>
					<div class="modal-body">
						
						<form action="demo_form.asp">
  							<input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
  							<input type="checkbox" name="vehicle" value="Car" checked> I have a car<br>
  							<input type="submit" value="Submit">
						</form>
						
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>							
			</div>
		</div>
		
	</div>
	<!-- <div>
		 <fieldset>
            <legend>Combo box</legend>
            Add value to Drop down List: <input type="text" name="txtCombo" id="txtCombo"/>
            <input type="button" value="Add" onclick="getSelectedValue()">
            <br/>
            Dropdown list: <select name="comboBox" id="comboBox"><option>select</option></select>
        </fieldset>
	</div> -->
<input type="button" value="submit" name="submitForm" />
</form>

	<script src="js/jquery-sortable.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>