package com.aspire.presentation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aspire.entity.Staff;
import com.aspire.service.StaffController;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		StaffController controller=new StaffController();
		String btnname=request.getParameter("btnname");
		String url="";
		if(btnname.equals("Login")) {
			if(controller.login(request)) {
				HttpSession session = request.getSession();
				session.setAttribute("info", request.getParameter("info"));
				Staff oldStaff = controller.getStaff(request.getParameter("info"));
				if (oldStaff.getType().equals("Admin")) {
					url = "AdminIndex.jsp";
				}
				if (oldStaff.getType().equals("Reception")) {
					url = "ReceptionIndex.jsp";
				}
				if (oldStaff.getType().equals("Doctor")) {
					url = "DoctorIndex.jsp";
				}
			}else {
				request.setAttribute("result", "Enter Valid Data!!");
				url="Login.jsp";
			}
			RequestDispatcher dispatch = request.getRequestDispatcher(url);
			dispatch.forward(request, response);
		}
	}

}
