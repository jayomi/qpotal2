package com.allianz.qportalapp.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.allianz.qportalapp.model.FormField;
import com.allianz.qportalapp.model.FormType;


public class FormTypeImpl {
	
	FormDBService dbservice=new FormDBService(); 
	Connection conn = null; 
	Statement stmt=null;
	
	 public void addformType(int formId, String formName,String status ){
			
		 FormType formType=new FormType(formId, formName,status);
		 //FormField form=new FormField(fieldID, fieldType, fieldLabel);
		 try {			
				
				System.out.println("inside form service service.....");				
				conn=dbservice.setConnection();
				stmt=conn.createStatement();
				formType.setFormId(formId);
				formType.setFormName(formName);
				formType.setFormStatus(status);				
				String query="INSERT INTO qportal.main_form(form_id,form_name,form_status) VALUES ('"+formId+"','"+formName+"','"+status+"')";
				
				//stmt.executeUpdate(query);
				stmt.execute(query);
				/*while(rs.next()){
					student.setId(id);
					student.setName(name);
					student.setAge(age);				
				}*/
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//return formType;			
	 } 
	 
	 public List<FormType> getFormList(){		
			
			List<FormType> formList=new ArrayList<FormType>();
			try {
				
				conn=dbservice.setConnection();
				stmt=conn.createStatement();
				String query="select form_id,form_name,form_description,department from qportal.main_form";
				ResultSet rs=stmt.executeQuery(query);
				
				
				while(rs.next()){
					
					int id=rs.getInt("form_id");
					String name=rs.getString("form_name");
					String description=rs.getString("form_description");
					String department=rs.getString("department");
					
					FormType formType=new FormType(id, name, description, department);
					formList.add(formType);										
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
			
			
			return formList;				
		
	}
}
