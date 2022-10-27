package com.aspire.dataaccesslayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;
import java.util.TreeSet;

import com.aspire.entity.Staff;


public class StaffDataBase {
	Connection connection=null;
	PreparedStatement prepareStatement = null;
	ResultSet resultSet = null;
	

	public boolean addNewStaff(Staff newStaff) {
		int flag = 0;
		String query = "insert into staff (staffid,name,address,phonenumber,email,aadharnumber,type,qualification,specialization,joineddate,gender,bloodgroup) values("
				+ newStaff.toString() + ")";
		try {
			prepareStatement = ConnectionFactory.getConnection().prepareStatement(query);
			flag = prepareStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (flag != 0)
			return true;

		return false;
	}

	public boolean updateStaffDetail(Staff oldStaff) {
		int flag = 0;
		String query = "update staff set name=?,address=?,phonenumber=?,email=?,aadharnumber=?,qualification=?,specialization=?,gender=?,bloodgroup=?,password=? where staffid=?";
		try {
			prepareStatement = ConnectionFactory.getConnection().prepareStatement(query);
			prepareStatement.setString(1,oldStaff.getName());
			prepareStatement.setString(2,oldStaff.getAddress());
			prepareStatement.setLong(3,oldStaff.getPhonenumber());
			prepareStatement.setString(4,oldStaff.getEmail());
			prepareStatement.setLong(5,oldStaff.getAadharnumber());
			prepareStatement.setString(6,oldStaff.getQualification());
			prepareStatement.setString(7,oldStaff.getSpecialization());
			prepareStatement.setString(8,oldStaff.getGender());
			prepareStatement.setString(9,oldStaff.getBloodGroup());
			prepareStatement.setString(10,oldStaff.getPassword());
			prepareStatement.setInt(11,oldStaff.getStaffId());
			flag = prepareStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (flag != 0)
			return true;

		return false;
	}

	public Staff getStaff(String data) {
		Staff oldstaff=null;
		String query = "select * from staff where phonenumber=? or email=? or aadharnumber=?";
		try {
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement(query);
			prepareStatement.setString(1,data);
			prepareStatement.setString(2,data);
			prepareStatement.setString(3,data);
			ResultSet resultset = prepareStatement.executeQuery();
			if(resultset.next()) {
				oldstaff=new Staff();
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
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return oldstaff;
	}
	public Set<Staff> listOfStaffs() {
		Set<Staff> stafflist = new TreeSet<Staff>();
		try {
			connection = ConnectionFactory.getConnection();
			prepareStatement = connection.prepareStatement("select * from staff");
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
				stafflist.add(oldstaff);
			}
		} catch (SQLException sqe) {
			sqe.getMessage();
		} catch (Exception e2) {
			e2.getMessage();
		}
		return stafflist;

	}
	
	public int getMaxIdOfStaff() {
		int maxId = 0;
		try {
			prepareStatement = ConnectionFactory.getConnection().prepareStatement("select max(staffid) from staff");
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

}
