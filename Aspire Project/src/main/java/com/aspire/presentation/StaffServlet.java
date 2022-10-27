package com.aspire.presentation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aspire.dataaccesslayer.StaffDataBase;
import com.aspire.entity.Staff;
import com.aspire.service.StaffController;

/**
 * Servlet implementation class StaffServlet
 */
@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		StaffController staffController=new StaffController();
		String btnname=request.getParameter("btnname");
		String url="";
		if(btnname.equals("Register")) {
			if(staffController.addNewStaff(request)) {
				request.setAttribute("result", "Successfully Registered!!");
				url="Login.jsp";				
			}else {
				request.setAttribute("result", "Enter Valid Data!!");
				url="Register.jsp";
			}
			RequestDispatcher dispatch = request.getRequestDispatcher(url);
			dispatch.forward(request, response);
		}
		if(btnname.equals("Update")) {
			url="EditProfile.jsp";	
			if(staffController.updateStaffDetail(request)) {
				request.setAttribute("result", "Successfully Updated!!");
				Staff oldStaff=staffController.getStaff(request.getParameter("phonenumber"));
				request.setAttribute("staff", oldStaff);							
			}else {
				request.setAttribute("result", "OOPS not Updated!!");
			}
			RequestDispatcher dispatch = request.getRequestDispatcher(url);
			dispatch.forward(request, response);
		}
		
	}
	
}
