package com.aspire.presentation;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aspire.entity.Appointment;
import com.aspire.entity.Patient;
import com.aspire.entity.Staff;
import com.aspire.service.AppointmentController;
import com.aspire.service.PatientController;
import com.aspire.service.StaffController;

/**
 * Servlet implementation class AdminIndexServlet
 */
@WebServlet("/AdminIndexServlet")
public class AdminIndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminIndexServlet() {
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
		response.setContentType("http/text");		
		String btnname=request.getParameter("btnname");
		boolean appointmentTable=false,staffTable=false,patientTable=false;
		String url="AdminIndex.jsp";
		StaffController controller=new StaffController();	
		if(btnname.equals("Edit Profile")) {
			Staff oldStaff=controller.getStaff(request.getParameter("info"));
			request.setAttribute("staff", oldStaff);
			url="EditProfile.jsp";
		}else if(btnname.equals("ListStaff")) {
			Set<Staff> staffList=controller.listOfStaffs();
			request.setAttribute("staffList", staffList);
			staffTable=true;
		}else if(btnname.equals("ListAppointment")) {
			AppointmentController appointmentController = new AppointmentController();
			List<Appointment> appointmentList=appointmentController.listOfAppointment();
			request.setAttribute("appointmentList", appointmentList);
			appointmentTable=true;
		}else if(btnname.equals("ListPatient")) {
			PatientController patientController = new PatientController();
			Set<Patient> patientList=patientController.listOfPatients();
			request.setAttribute("patientList", patientList);
			patientTable=true;
		}
		request.setAttribute("displayAppointment", appointmentTable);
		request.setAttribute("displayPatient", patientTable);
		request.setAttribute("displayStaff", staffTable);
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}

}
