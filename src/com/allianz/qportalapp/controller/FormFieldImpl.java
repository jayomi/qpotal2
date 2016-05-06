package com.allianz.qportalapp.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.allianz.qportalapp.model.FormField;
import com.allianz.qportalapp.model.FormSegment;


public class FormFieldImpl {
	
	FormDBService dbservice=new FormDBService(); 
	Connection conn = null; 
	Statement stmt=null;
	
	public List<FormField> getFieldByFormIdAndSegmentId(int formId,int segmentId){
		
		List<FormField> fieldList=new ArrayList<FormField>();
		try{
			
			conn=dbservice.setConnection();
			stmt=conn.createStatement();		
			String query="SELECT * FROM qportal.field_form WHERE form_id='"+formId+"' AND segment_id='"+segmentId+"'";
			ResultSet rs=stmt.executeQuery(query);
			
			
			while(rs.next()){
				
				//int fieldId=rs.getInt("field_id");
				String fieldName=rs.getString("field_name");
				String fieldType=rs.getString("field_type");
				String ispredefine_data=rs.getString("ispredefine_data");				
				String predefine_value=rs.getString("predefine_value");
				
				FormField formField=new FormField(formId, segmentId, fieldName, fieldType,ispredefine_data,predefine_value);
				//FormField formField=new FormField(formId, segmentId, fieldName, fieldType,ispredefine_data);
				fieldList.add(formField);				
				System.out.println("inside form field.................");
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return fieldList;	
		
	}
	
	public void addformField(int formId,int segmentID, String fieldName,String fieldType,String isPredefineData){
		
		FormField formField=new FormField(formId, segmentID, fieldName, fieldType, isPredefineData);
		int fieldId=0;
		 try {			
				
							
				conn=dbservice.setConnection();
				stmt=conn.createStatement();
				String queryCount="select count(*) from qportal.field_form";
				ResultSet maxRow=stmt.executeQuery(queryCount);
				int rowCount=0;
				
				while(maxRow.next()){
					
					rowCount=Integer.parseInt(maxRow.getString(1));					
					System.out.println("rowCount:"+rowCount);
					
				}
				
				if(rowCount==0){
					fieldId=1;
				}else{
					fieldId=++rowCount;
				}
				
				formField.setFieldID(fieldId);
				formField.setFormID(formId);
				formField.setSegmentID(segmentID);
				formField.setFieldName(fieldName);
				formField.setFieldType(fieldType);
				formField.setIsPredefineData(isPredefineData);
				//formField.setPredefineValue(predefineValue);
				//String query="INSERT INTO qportal.field_form(form_id,segment_id,field_name,field_type,ispredefine_data,predefine_value) VALUES ('"+formId+"','"+segmentID+"','"+fieldName+"','"+fieldType+"','"+isPredefineData+"','"+predefineValue+"')";
				String query="INSERT INTO qportal.field_form(form_id,segment_id,field_name,field_type,ispredefine_data) VALUES ('"+formId+"','"+segmentID+"','"+fieldName+"','"+fieldType+"','"+isPredefineData+"')";
				
				stmt.execute(query);
					
				//String query="INSERT INTO qportal.datasegment(segment_id,label,description) VALUES ('"+segmentId+"','"+segmentLabel+"','"+segmentDescription+"')";
				//stmt.execute(query);
				
			} catch (SQLException e) {				
				e.printStackTrace();
			}	
		 	
	 }

}
