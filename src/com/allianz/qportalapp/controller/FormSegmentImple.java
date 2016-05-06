package com.allianz.qportalapp.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.allianz.qportalapp.model.FormSegment;
import com.allianz.qportalapp.model.FormType;


public class FormSegmentImple {
	
	FormDBService dbservice=new FormDBService(); 
	Connection conn = null; 
	Statement stmt=null;
	
	 public void addformSegment(int formId,int segmentId,String segmentLabel,String segmentDescription ){
		
		 FormSegment formSegment=new FormSegment(formId,segmentId,segmentLabel,segmentDescription);
		 
		 int segment_Id=0;
		 try {			
				
				System.out.println("inside form service service.....");				
				conn=dbservice.setConnection();
				stmt=conn.createStatement();
				formSegment.setFormId(formId);
				formSegment.setSegmentId(segmentId);
				formSegment.setSegmentLabel(segmentLabel);
				formSegment.setSegmentDescription(segmentDescription);
				//('"+formId+"','"+formName+"','"+status+"')";
				//...................................................
				String queryCount="SELECT count(*) FROM qportal.datasegment";
				ResultSet maxRow=stmt.executeQuery(queryCount);
				int rowCount=0;		
				
				while(maxRow.next()){
					
					rowCount=Integer.parseInt(maxRow.getString(1));					
					System.out.println("rowCount:"+rowCount);
					
				}
				
				if(rowCount==0){
					segment_Id=1;
				}else{
					segment_Id=++rowCount;
				}
				//..................................................................
				/*String getmaxSegmentID="SELECT MAX(segment_id) FROM qportal.datasegment";				
				ResultSet maxSegmentID=stmt.executeQuery(getmaxSegmentID);
				
				while(maxSegmentID.next()){
					maxSegmentValue=Integer.parseInt(maxSegmentID.getString(1));
					System.out.println(maxSegmentValue);
				}*/
				//if(maxSegmentValue<segmentId){					
					String query="INSERT INTO qportal.datasegment(form_id,segment_id,label,description) VALUES ('"+formId+"','"+segmentId+"','"+segmentLabel+"','"+segmentDescription+"')";
					stmt.execute(query);					
				//}
				
				
			} catch (SQLException e) {				
				e.printStackTrace();
			}		 
				
		 	
	 }
	 public int getMaxSegmentID() throws SQLException{
		 
		 conn=dbservice.setConnection();
		 stmt=conn.createStatement();
		 String getmaxSegmentID="SELECT MAX(segment_id) FROM qportal.datasegment";
		 ResultSet maxSegmentID=stmt.executeQuery(getmaxSegmentID);
		 int maxSegmentValue = 0;
		 while(maxSegmentID.next()){
			maxSegmentValue=Integer.parseInt(maxSegmentID.getString(1));
			System.out.println("inside getMaxSegmentID: "+maxSegmentValue);
		 }
		 return maxSegmentValue;
	 }
	 
	 public List<FormSegment> getFormSegmentByFormId(int formId){
		 List<FormSegment> formSegmentList=new ArrayList<FormSegment>();
		 try {				
				conn=dbservice.setConnection();
				stmt=conn.createStatement();					
				String query="SELECT segment_id, label, description FROM qportal.datasegment where form_id="+formId;
				ResultSet rs=stmt.executeQuery(query);
				
				
				while(rs.next()){
					
					int segmentId=rs.getInt("segment_id");
					String label=rs.getString("label");
					String description=rs.getString("description");
					FormSegment formSegment=new FormSegment(formId, segmentId, label, description);
					formSegmentList.add(formSegment);
										
				}
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				
			}
		return formSegmentList;		
		 
	 }
	 
	public String deleteFormSegment(int segmentID){
			
			String response="";		
			try {
				
				conn=dbservice.setConnection();
				stmt=conn.createStatement();
				//String query="delete from student where id in (select id from student where id="+s_id+")";
				String query="delete from qportal.datasegment where segment_id="+segmentID;

				//String qu="delete from student where id=101";
				stmt.execute(query);
				response="Successfully deleted..";
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				response="Faild to delete";
				e.printStackTrace();			
			}	
			return response;		
		}
	

}
