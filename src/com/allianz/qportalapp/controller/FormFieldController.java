package com.allianz.qportalapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormFieldController
 */
@WebServlet("/FormFieldController")
public class FormFieldController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    RequestDispatcher requestDispatcher=null;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormFieldController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter writer=response.getWriter();
		String fieldType=request.getParameter("fieldType");
		request.setAttribute("fieldType", fieldType);
		String addRow=request.getParameter("addRow");
		
		if(addRow!=null){
			writer.write(fieldType);
			requestDispatcher=request.getRequestDispatcher("a.jsp");
			requestDispatcher.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
