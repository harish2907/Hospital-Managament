package com.aspire.service;

import java.util.Set;

import com.aspire.dataaccesslayer.StaffDataBase;
import com.aspire.entity.Staff;

import jakarta.servlet.http.HttpServletRequest;

public class StaffController {
	StaffDataBase staffDataBase = new StaffDataBase();

	public boolean addNewStaff(HttpServletRequest request) {
		Staff newStaff = new Staff();
		newStaff.setStaffId(staffDataBase.getMaxIdOfStaff() + 1);
		newStaff.setName(request.getParameter("name"));
		newStaff.setAddress(request.getParameter("address"));
		newStaff.setPhonenumber(Long.parseLong(request.getParameter("phonenumber")));
		newStaff.setEmail(request.getParameter("email"));
		newStaff.setAadharnumber(Long.parseLong(request.getParameter("aadharnumber")));
		newStaff.setType(request.getParameter("type"));
		newStaff.setQualification(request.getParameter("qualification"));
		newStaff.setSpecialization(request.getParameter("specialization"));
		newStaff.setJoinedDate(request.getParameter("joineddate"));
		newStaff.setGender(request.getParameter("gender"));
		newStaff.setBloodGroup(request.getParameter("bloodgroup"));
		boolean output = staffDataBase.addNewStaff(newStaff);
		return output;
	}
	public boolean updateStaffDetail(HttpServletRequest request) {
		Staff oldStaff = new Staff();
		oldStaff.setStaffId(Integer.parseInt(request.getParameter("staffId")));
		oldStaff.setName(request.getParameter("name"));
		oldStaff.setAddress(request.getParameter("address"));
		oldStaff.setPhonenumber(Long.parseLong(request.getParameter("phonenumber")));
		oldStaff.setEmail(request.getParameter("email"));
		oldStaff.setAadharnumber(Long.parseLong(request.getParameter("aadharnumber")));
		oldStaff.setQualification(request.getParameter("qualification"));
		oldStaff.setSpecialization(request.getParameter("specialization"));
		oldStaff.setGender(request.getParameter("gender"));
		oldStaff.setBloodGroup(request.getParameter("bloodgroup"));
		oldStaff.setPassword(request.getParameter("password"));
		boolean output = staffDataBase.updateStaffDetail(oldStaff);
		return output;
	}
    public Set<Staff> listOfStaffs(){
    	return staffDataBase.listOfStaffs();
    }
	public Staff getStaff(String info) {
		return staffDataBase.getStaff(info);
	}

	public boolean login(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String password = request.getParameter("password");
		String info= request.getParameter("info");
		Staff staff=getStaff(info);
		if(staff!=null) {
			if(staff.getPassword().equals(password)) {
				
				return true;
			}
		}
		return false;
	}
}
