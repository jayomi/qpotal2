package com.allianz.qportalapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.corba.se.impl.ior.WireObjectKeyTemplate;

/**
 * Servlet implementation class FormSegmentController
 */
@WebServlet("/FormSegmentController")
public class FormSegmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher requestDispatcher=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormSegmentController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);	
		response.setContentType("text/html");
		PrintWriter writer=response.getWriter();
		
		String segmentId[]=request.getParameterValues("segmentId");
        String segmentName[]=request.getParameterValues("segmentName");
        String segmentDescription[]=request.getParameterValues("segmentDescription");
        
        
        String question_segmentId[]=request.getParameterValues("question_segmentId");
        String questionName[]=request.getParameterValues("QuestionName");
        String questionType[]=request.getParameterValues("questionType");
        String isPredefine[]=request.getParameterValues("isPredefineValue");
		
        
		Object formID=session.getAttribute( "formIndex" );
		int formIndex=(int) formID;		
		
		
		int segmentIdInt[] = new int[segmentId.length];int a=0;
		int question_segmentIdInt[]=new int[question_segmentId.length];int b=0;
        for(String stringSegmentId: segmentId){
        	segmentIdInt[a++]=Integer.parseInt(stringSegmentId);    	
        }for(String stringQuestionSegmentId:question_segmentId){
        	question_segmentIdInt[b++]=Integer.parseInt(stringQuestionSegmentId);
        }
        
        FormSegmentImple formSegmentImple=new FormSegmentImple();
        FormFieldImpl formFieldImpl=new FormFieldImpl();       
       
		 for (int i=0;i<segmentId.length;i++){
			
			/*request.setAttribute("segmentID", segmentID);
			request.setAttribute("segment_labelName", segmentlabelName);
			request.setAttribute("segment_labelDescription", segmentlabelDescription);*/
			
			
			formSegmentImple.addformSegment(formIndex, segmentIdInt[i], segmentName[i], segmentDescription[i]);
			
			//formSegmentImple.addformSegment(segmentID,segmentlabelName, segmentlabelDescription);
			//requestDispatcher=request.getRequestDispatcher("second.jsp");
			//requestDispatcher.forward(request, response);
			
		}
		 for(int i=0;i<questionName.length;i++){
			 formFieldImpl.addformField(formIndex,question_segmentIdInt[i], questionName[i], questionType[i], isPredefine[i]);	
			 formFieldImpl.addformField(formIndex, question_segmentIdInt[i],  questionName[i], questionType[i], isPredefine[i]);
		 }
		 
		/*if(deleteSegment!=null){
			try{
				FormSegmentImple formSegmentImple=new FormSegmentImple();
				//maxSegmentID=formSegmentImple.getMaxSegmentID();
				//writer.write(maxSegmentID);
				formSegmentImple.deleteFormSegment(segmentID);
				writer.write("sucessfully deleted");
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}
		else if(addDataFieldRow!=null){		
			
			String fieldName=request.getParameter("LabelofDataField");
			String fieldType=request.getParameter("fieldType");
			request.setAttribute("fieldType", fieldType);
			String preDefineValue=request.getParameter("preDefineValue");		
			request.setAttribute("preDefineValue", preDefineValue);		
			String show_predefine_data=request.getParameter("show_pre_data");				
			request.setAttribute("show_pre_data", show_predefine_data);		
			
			FormFieldImpl formFieldImpl=new FormFieldImpl();
			formFieldImpl.addformField(formIndex, segmentID, fieldName, fieldType, preDefineValue,show_predefine_data);			
			requestDispatcher=request.getRequestDispatcher("a.jsp");
			requestDispatcher.forward(request, response);
			
		}
			*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
