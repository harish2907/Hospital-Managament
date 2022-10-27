package com.aspire.dataaccesslayer;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import com.aspire.entity.Staff;

public class DoctorDataBase {
	Connection connection=null;
	PreparedStatement prepareStatement = null;
	ResultSet resultSet = null;
	public  boolean addpatientToDoctor(int doctorId, int patientId, String patientDate, String type) {
		int flag = 0;
		try {
			String query="insert into doctor values(?,?,?,?,?)";
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			prepareStatement.setInt(1, doctorId);
			prepareStatement.setInt(2, patientId);
			prepareStatement.setString(3, patientDate);
			prepareStatement.setString(4, "Active");
			prepareStatement.setString(5, type);
			flag = prepareStatement.executeUpdate();

		} catch (SQLException sqe) {
			sqe.getMessage();
		} catch (Exception e2) {
			e2.getMessage();
		} 

		if (flag != 0)
			return true;
		return false;
	}

	public Set<Staff> listOfDoctors(){
		Set<Staff> doctorlist = new TreeSet<Staff>();
		try {
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement("select * from staff where type='Doctor'");
			ResultSet resultset = prepareStatement.executeQuery();
			while (resultset.next()) {
				Staff oldstaff=new Staff();
				oldstaff.setStaffId(resultset.getInt(1));
				oldstaff.setName(resultset.getString(2));
				oldstaff.setAddress(resultset.getString(3));
				oldstaff.setPhonenumber(Long.parseLong(resultset.getString(4)));
				oldstaff.setEmail(resultset.getString(5));
				oldstaff.setAadharnumber(Long.parseLong(resultset.getString(6)));
				oldstaff.setType(resultset.getString(7));
				oldstaff.setQualification(resultset.getString(8));
				oldstaff.setSpecialization(resultset.getString(9));
				oldstaff.setJoinedDate(resultset.getString(10));
				oldstaff.setGender(resultset.getString(11));
				oldstaff.setBloodGroup(resultset.getString(12));
				oldstaff.setPassword(resultset.getString(13));			
				doctorlist.add(oldstaff);
			}
		} catch (SQLException sqe) {
			sqe.getMessage();
		} catch (Exception e2) {
			e2.getMessage();
		}
		return doctorlist;
	}
	public Map<Integer,Integer> getCountOfPatientForDoctor(){
		Map<Integer,Integer> patientCount =  new HashMap<Integer,Integer>();
		String query="select staffid,count(doctorid) from staff left join doctor on doctorid=staffid where staff.type='Doctor' group by staffid";
		try {
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			prepareStatement.executeQuery();
			ResultSet resultSet = prepareStatement.getResultSet();
			while (resultSet.next()) {
				patientCount.put(resultSet.getInt(1), resultSet.getInt(2));
			}
			
		} catch (SQLException sqe) {
			sqe.getMessage();
		}
		return patientCount;
	}
}
