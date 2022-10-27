package com.aspire.dataaccesslayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.aspire.entity.Appointment;

public class AppointmentDataBase {
	Connection connection=null;
	PreparedStatement prepareStatement = null;
	ResultSet resultSet = null;
	public boolean addNewAppointment(Appointment newAppointment) {
		int flag = 0;
		String query = "insert into appointment values(?,?,?,?)";
		try {
			connection=ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			prepareStatement.setInt(1,newAppointment.getAppointmentId());
			prepareStatement.setInt(2,newAppointment.getPatientId());
			prepareStatement.setString(3,newAppointment.getDate());
			prepareStatement.setString(4,newAppointment.getTimeSlot());
			flag = prepareStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (flag != 0)
			return true;

		return false;
	}
	public int getMaxIdOfAppointment() {
		int maxId = 0;
		try {
			prepareStatement = ConnectionFactory.getConnection().prepareStatement("select max(id) from appointment");
			prepareStatement.executeQuery();
			resultSet = prepareStatement.getResultSet();
			if (resultSet.next()) {
				maxId = resultSet.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return maxId;
	}
	public List<Appointment> listOfAppointment() {
		List<Appointment> appointmentList = new ArrayList<Appointment>();
		try {
			String query="select id,doctorid,name,address,phonenumber,issue,appointmentdate,timeslot,bloodgroup,gender,status from patient as pat  join appointment as app on (pat.patientid=app.patientid);";
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			ResultSet resultset = prepareStatement.executeQuery();
			while (resultset.next()) {
				Appointment oldAppointment=new Appointment();
				oldAppointment.setAppointmentId(resultset.getInt(1));
				oldAppointment.setDoctorId(resultset.getInt(2));
				oldAppointment.setName(resultset.getString(3));
				oldAppointment.setAddress(resultset.getString(4));
				oldAppointment.setPhonenumber(Long.parseLong(resultset.getString(5)));
				oldAppointment.setIssue(resultset.getString(6));
				oldAppointment.setDate(resultset.getString(7));
				oldAppointment.setTimeSlot(resultset.getString(8));
				oldAppointment.setBloodGroup(resultset.getString(9));
				oldAppointment.setGender(resultset.getString(10));
				oldAppointment.setStatus(resultset.getString(11));
				appointmentList.add(oldAppointment);
			}
		} catch (SQLException sqe) {
			sqe.getMessage();
		} catch (Exception e2) {
			e2.getMessage();
		}
		return appointmentList;
	}
	public List<Appointment> listOfAppointment(String phonenumber) {
		List<Appointment> appointmentList = new ArrayList<Appointment>();
		try {
			String query="select id,doctorid,name,address,phonenumber,issue,appointmentdate,timeslot,bloodgroup,gender,status from patient as pat  join appointment as app on (pat.patientid=app.patientid) where phonenumber='"+phonenumber+"'";
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			ResultSet resultset = prepareStatement.executeQuery();
			while (resultset.next()) {
				Appointment oldAppointment=new Appointment();
				oldAppointment.setAppointmentId(resultset.getInt(1));
				oldAppointment.setDoctorId(resultset.getInt(2));
				oldAppointment.setName(resultset.getString(3));
				oldAppointment.setAddress(resultset.getString(4));
				oldAppointment.setPhonenumber(Long.parseLong(resultset.getString(5)));
				oldAppointment.setIssue(resultset.getString(6));
				oldAppointment.setDate(resultset.getString(7));
				oldAppointment.setTimeSlot(resultset.getString(8));
				oldAppointment.setBloodGroup(resultset.getString(9));
				oldAppointment.setGender(resultset.getString(10));	
				oldAppointment.setStatus(resultset.getString(11));
				appointmentList.add(oldAppointment);
			}
		} catch (SQLException sqe) {
			sqe.getMessage();
		} catch (Exception e2) {
			e2.getMessage();
		}
		return appointmentList;
	}

}
