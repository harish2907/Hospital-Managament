package com.aspire.service;

import java.util.List;

import com.aspire.dataaccesslayer.AppointmentDataBase;
import com.aspire.entity.Appointment;

import jakarta.servlet.http.HttpServletRequest;

public class AppointmentController {
	AppointmentDataBase appointmentDataBase=new AppointmentDataBase();
	PatientController patientController=new PatientController();
	DoctorController doctorController=new DoctorController();
	public boolean addNewAppointment(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Appointment newAppointment= new Appointment();
		newAppointment.setAppointmentId(appointmentDataBase.getMaxIdOfAppointment()+1);
		newAppointment.setPatientId(patientController.getMaxIdOfPatient());
		newAppointment.setDoctorId(doctorController.getMinKey());
		newAppointment.setName(request.getParameter("name"));
		newAppointment.setAddress(request.getParameter("address"));
		newAppointment.setPhonenumber(Long.parseLong(request.getParameter("phonenumber")));
		newAppointment.setIssue(request.getParameter("reason"));
		newAppointment.setDate(request.getParameter("date"));
		newAppointment.setTimeSlot(request.getParameter("time"));
		newAppointment.setBloodGroup(request.getParameter("bloodgroup"));
		newAppointment.setGender(request.getParameter("gender"));
		newAppointment.setStatus("Appointed");
		if(patientController.addNewPatient(newAppointment)) {
			if(appointmentDataBase.addNewAppointment(newAppointment))
				if(doctorController.addPatientToDoctor(newAppointment.getDoctorId(),newAppointment.getPatientId(), newAppointment.getDate(), "Appointment"))
				    return true;
		}
		return false;
	}
	public List<Appointment> listOfAppointment(){
		return appointmentDataBase.listOfAppointment();
	}
	public List<Appointment> listOfAppointment(String phonenumber){
		return appointmentDataBase.listOfAppointment(phonenumber);
	}
	

}
