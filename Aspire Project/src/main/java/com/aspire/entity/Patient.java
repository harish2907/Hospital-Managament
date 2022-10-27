package com.aspire.entity;

public class Patient implements Comparable<Patient>{
	private int patientId; 
	private int doctorId; 
	private String name; 
	private long phonenumber;
	private String address;	
	private String issue; 
	private String status; 	 
	private String gender;
	private String bloodGroup;
	private String type;
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(long phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	@Override
	public boolean equals(Object obj) {
		Class<? extends Object> c1 = obj.getClass();
		boolean flag = false;
		if (c1 == this.getClass()) {
			Patient other = (Patient) obj;
			if (this.hashCode() == other.hashCode())
				flag = true;
		}
		return flag;
	}
	@Override
	public int hashCode() {
		return this.patientId;
	}
	@Override
	public int compareTo(Patient obj) {
		int result = -1;
		if (this.patientId == obj.patientId)
			result = 0;
		else if (this.patientId > obj.patientId)
			result = 1;
		return result;
	}
		
}
