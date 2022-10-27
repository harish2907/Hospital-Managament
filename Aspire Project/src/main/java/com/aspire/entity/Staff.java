package com.aspire.entity;


public class Staff implements Comparable<Staff>{
	private int staffId;
	private String name; 
	private String address; 
	private String email;
	private long phonenumber;
	private long aadharnumber; 
	private String type;
	private String qualification;
	private String specialization;
	private String joinedDate; 
	private String bloodGroup; 
	private String gender;
	private String password;
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public String getName() {
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
		
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(long phonenumber) {							
		this.phonenumber = phonenumber;
		
	}
	public long getAadharnumber() {
		return aadharnumber;
	}
	public void setAadharnumber(long aadharnumber) {	
		this.aadharnumber = aadharnumber;
		
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getJoinedDate() {
		return joinedDate;
	}
	public void setJoinedDate(String joinedDate) {
		this.joinedDate = joinedDate;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String toString() {
		return this.staffId+",'"+this.name+"','"+ this.address+"','"+this.phonenumber+"','"+this.email+"','"+ this.aadharnumber+"','"+ this.type+"','"+ this.qualification+"','"+ this.specialization+"','"+this.joinedDate+"','"+ this.gender+"','"+ this.bloodGroup+"'";		
	}
	@Override
	public boolean equals(Object obj) {
		Class<? extends Object> c1 = obj.getClass();
		boolean flag = false;
		if (c1 == this.getClass()) {
			Staff other = (Staff) obj;
			if (this.hashCode() == other.hashCode())
				flag = true;
		}
		return flag;
	}
	@Override
	public int hashCode() {
		return this.staffId;
	}
	@Override
	public int compareTo(Staff obj) {
		int result = -1;
		if (this.staffId == obj.staffId)
			result = 0;
		else if (this.staffId > obj.staffId)
			result = 1;
		return result;
	}
}
