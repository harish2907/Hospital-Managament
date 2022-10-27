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
import com.aspire.service.AppointmentController;
import com.aspire.service.PatientController;

/**
 * Servlet implementation class PatientReportServlet
 */
@WebServlet("/PatientReportServlet")
public class PatientReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientReportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("html/text");
		String phonenumber=request.getParameter("phonenumber");
		String type=request.getParameter("type");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("html/text");
		String phonenumber=request.getParameter("phonenumber");
		String type=request.getParameter("type");
		boolean appointmentTable=false,inPatientTable=false,outPatientTable=false;
		if(type.equals("Appointment")) {
			AppointmentController appointmentController = new AppointmentController();
			List<Appointment> myAppointmentList = appointmentController.listOfAppointment(phonenumber);
			appointmentTable=true;			
			request.setAttribute("myAppointmentList", myAppointmentList);
		}
		if(type.equals("InPatient")) {
			PatientController patientController = new PatientController();
			Set<Patient> patientList=patientController.listOfPatients(phonenumber,true);
			request.setAttribute("patientList", patientList);
			inPatientTable=true;
		}
		if(type.equals("OutPatient")) {
			PatientController patientController = new PatientController();
			Set<Patient> patientList=patientController.listOfPatients(phonenumber,false);
			request.setAttribute("patientList", patientList);
			outPatientTable=true;
		}
		request.setAttribute("displayAppointment", appointmentTable);
		request.setAttribute("displayInPatient", inPatientTable);
		request.setAttribute("displayOutPatient", outPatientTable);
		RequestDispatcher dispatch = request.getRequestDispatcher("MyReport.jsp");
		dispatch.forward(request, response);

	}

}
