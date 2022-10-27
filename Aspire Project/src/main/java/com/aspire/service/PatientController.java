package com.aspire.service;

import java.util.Set;

import com.aspire.dataaccesslayer.PatientDataBase;
import com.aspire.entity.Appointment;
import com.aspire.entity.InPatient;
import com.aspire.entity.OutPatient;
import com.aspire.entity.Patient;

public class PatientController {
	PatientDataBase patientDataBase = new PatientDataBase();
	public boolean addNewPatient(Appointment newAppointment) {
		// TODO Auto-generated method stub	
		return patientDataBase.addNewPatient(newAppointment);
	}
	public boolean addNewPatient(InPatient newInPatient) {
		// TODO Auto-generated method stub
		return patientDataBase.addNewInPatient(newInPatient);
	}
	public boolean addNewPatient(OutPatient newOutPatient) {
		// TODO Auto-generated method stub
		return patientDataBase.addNewOutPatient(newOutPatient);
	}
	public Set<Patient> listOfPatients(){
		return patientDataBase.listOfPatient();
	}
	public Set<Patient> listOfPatients(String phonenumber,boolean type){
		return patientDataBase.listOfPatient(phonenumber,type);
	}
	public int getMaxIdOfPatient() {
		// TODO Auto-generated method stub
		return patientDataBase.getMaxIdOfPatient();
	}
}
