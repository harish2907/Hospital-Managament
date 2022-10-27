package com.aspire.dataaccesslayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import com.aspire.entity.Appointment;
import com.aspire.entity.InPatient;
import com.aspire.entity.OutPatient;
import com.aspire.entity.Patient;

public class PatientDataBase {
	Connection connection=null;
	PreparedStatement prepareStatement = null;
	ResultSet resultSet = null;
	public boolean addNewPatient(Patient newPatient,String type) {
		int flag = 0;
		String query = "insert into patient values(?,?,?,?,?,?,?,?,?,?)";
		try {
			connection=ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			prepareStatement.setInt(1,newPatient.getPatientId());
			prepareStatement.setInt(2,newPatient.getDoctorId());
			prepareStatement.setString(3,newPatient.getName());
			prepareStatement.setString(4,newPatient.getAddress());
			prepareStatement.setLong(5,newPatient.getPhonenumber());
			prepareStatement.setString(6,newPatient.getIssue());
			prepareStatement.setString(7,newPatient.getStatus());
			prepareStatement.setString(8,newPatient.getBloodGroup());
			prepareStatement.setString(9,newPatient.getGender());
			prepareStatement.setString(10,type);
			flag = prepareStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (flag != 0)
			return true;

		return false;
	}
	public boolean addNewPatient(Appointment newAppointment) {
		return addNewPatient(newAppointment,"Appointment");
//		int flag = 0;
//		String query = "insert into patient values(?,?,?,?,?,?,?,?,?,?)";
//		try {
//			connection=ConnectionFactory.getConnection();
//			prepareStatement = connection.prepareStatement(query);
//			prepareStatement.setInt(1,newAppointment.getPatientId());
//			prepareStatement.setInt(2,newAppointment.getDoctorId());
//			prepareStatement.setString(3,newAppointment.getName());
//			prepareStatement.setString(4,newAppointment.getAddress());
//			prepareStatement.setLong(5,newAppointment.getPhonenumber());
//			prepareStatement.setString(6,newAppointment.getIssue());
//			prepareStatement.setString(7,newAppointment.getStatus());
//			prepareStatement.setString(8,newAppointment.getBloodGroup());
//			prepareStatement.setString(9,newAppointment.getGender());
//			prepareStatement.setString(10,"Appointment");
//			flag = prepareStatement.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		if (flag != 0)
//			return true;
//
//		return false;
	}
	public boolean addNewInPatient(InPatient newInPatient) {
		// TODO Auto-generated method stub
		boolean flag = addNewPatient(newInPatient,"InPatient");
		return flag;
	}
	public boolean addNewOutPatient(OutPatient newOutPatient) {
		// TODO Auto-generated method stub
		boolean flag = addNewPatient(newOutPatient,"OutPatient");
		return flag;
	}
	public Set<Patient> listOfPatient() {
		Set<Patient> patientList = new TreeSet<Patient>();
		try {
			String query="select * from patient where type!='Appointment'";
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			ResultSet resultset = prepareStatement.executeQuery();
			while (resultset.next()) {
				Patient oldPatient=new Patient();
				oldPatient.setPatientId(resultset.getInt(1));
				oldPatient.setDoctorId(resultset.getInt(2));
				oldPatient.setName(resultset.getString(3));
				oldPatient.setAddress(resultset.getString(4));
				oldPatient.setPhonenumber(Long.parseLong(resultset.getString(5)));
				oldPatient.setIssue(resultset.getString(6));
				oldPatient.setStatus(resultset.getString(7));
				oldPatient.setBloodGroup(resultset.getString(8));
				oldPatient.setGender(resultset.getString(9));	
				oldPatient.setType(resultset.getString(10));
				patientList.add(oldPatient);
			}
		} catch (SQLException sqe) {
			sqe.getMessage();
		} catch (Exception e2) {
			e2.getMessage();
		}
		return patientList;
	}
	public Set<Patient> listOfPatient(String phonenumber,boolean type) {
		Set<Patient> patientList = new TreeSet<Patient>();
		String query="";
		try {
			if(type)
			    query="select * from patient where type='InPatient' and phonenumber='"+phonenumber+"'";
			else
				query="select * from patient where type='OutPatient' and phonenumber='"+phonenumber+"'";
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			ResultSet resultset = prepareStatement.executeQuery();
			while (resultset.next()) {
				Patient oldPatient=new Patient();
				oldPatient.setPatientId(resultset.getInt(1));
				oldPatient.setDoctorId(resultset.getInt(2));
				oldPatient.setName(resultset.getString(3));
				oldPatient.setAddress(resultset.getString(4));
				oldPatient.setPhonenumber(Long.parseLong(resultset.getString(5)));
				oldPatient.setIssue(resultset.getString(6));
				oldPatient.setStatus(resultset.getString(7));
				oldPatient.setBloodGroup(resultset.getString(8));
				oldPatient.setGender(resultset.getString(9));	
				oldPatient.setType(resultset.getString(10));
				patientList.add(oldPatient);
			}
		} catch (SQLException sqe) {
			sqe.getMessage();
		} catch (Exception e2) {
			e2.getMessage();
		}
		return patientList;
	}
	public int getMaxIdOfPatient() {
		int maxId = 0;
		try {
			prepareStatement = ConnectionFactory.getConnection().prepareStatement("select max(patientid) from patient");
			prepareStatement.executeQuery();
			resultSet = prepareStatement.getResultSet();
			if (resultSet.next()) {
				maxId = resultSet.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return maxId+1;
	}
	
}
