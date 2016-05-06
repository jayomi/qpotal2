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

/**
 * Servlet implementation class FormController
 */
@WebServlet("/FormController")
public class FormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher requestDispatcher=null;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);	
		response.setContentType("text/html");
		PrintWriter writer=response.getWriter();
		
		String formName=request.getParameter("formName");
		int formId=Integer.parseInt(request.getParameter("formID"));
		session.setAttribute("formIndex", formId);
		String status=request.getParameter("status");
		
		//String select=request.getParameter("select");
		//request.setAttribute("FormLabel", labelName);
		//writer.write(formName);	
		String submit_formType=request.getParameter("submit_formType");
		
		
		if(submit_formType!=null){
			
			FormTypeImpl formTypeImpl=new FormTypeImpl();
			formTypeImpl.addformType(formId, formName, status);
			writer.write("data inserted");
			request.setAttribute("form_Name", formName);
			//request.setAttribute("form_Id", formId);
			//response.sendRedirect("index.html");
			requestDispatcher=request.getRequestDispatcher("first.jsp");
			requestDispatcher.forward(request, response);			
		}
		
		
		//requestDispatcher=request.getRequestDispatcher("test.jsp");
		//requestDispatcher.forward(request, response);			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
