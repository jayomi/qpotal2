package com.allianz.qportalapp.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.allianz.qportalapp.model.FormField;
import com.allianz.qportalapp.model.PredefineValue;

public class PredefineValueImpl {

	FormDBService dbservice=new FormDBService(); 
	Connection conn = null; 
	Statement stmt=null;
	
	public List<PredefineValue> getPreDefineValueByFormIdAndSegmentID(int formId,int segmentId){
		
		List<PredefineValue> prevaluList=new ArrayList<PredefineValue>();
		
		try{
			
			conn=dbservice.setConnection();
			stmt=conn.createStatement();		
			String query="SELECT * FROM qportal.predifine_value WHERE form_id='"+formId+"' AND segment_id='"+segmentId+"'";
			ResultSet rs=stmt.executeQuery(query);
			
			
			while(rs.next()){
				
				int fieldId=rs.getInt("field_id");
				String fieldName=rs.getString("value");
				
				PredefineValue preValue=new PredefineValue(formId, segmentId, fieldId, fieldName);
							
				prevaluList.add(preValue);				
				System.out.println("inside form field.................");
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
			return prevaluList;	
	}	
	
	public List<PredefineValue> getPreDefineValueByFormId(int formId){
		
		List<PredefineValue> prevaluList=new ArrayList<PredefineValue>();
		
		try{
			
			conn=dbservice.setConnection();
			stmt=conn.createStatement();		
			String query="SELECT * FROM qportal.predifine_value WHERE form_id='"+formId+"'";
			ResultSet rs=stmt.executeQuery(query);
			
			
			while(rs.next()){
				
				int fieldId=rs.getInt("field_id");
				int segmentId=rs.getInt("segment_id");
				String fieldName=rs.getString("value");
				
				PredefineValue preValue=new PredefineValue(formId, segmentId, fieldId, fieldName);
							
				prevaluList.add(preValue);				
				System.out.println("inside form field.................");
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
		
		return prevaluList;	
	} 
}
