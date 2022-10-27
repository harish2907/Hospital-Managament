package com.aspire.service;

import java.util.Map;
import java.util.Set;

import com.aspire.dataaccesslayer.DoctorDataBase;
import com.aspire.entity.Staff;

public class DoctorController {
	DoctorDataBase doctorDataBase = new DoctorDataBase();
	public boolean addPatientToDoctor(int doctorId, int patientId, String patientDate, String type) {
		return doctorDataBase.addpatientToDoctor(doctorId, patientId, patientDate, type);
	}
	public Set<Staff> listOfDoctors() {
		return doctorDataBase.listOfDoctors();
	}

	public Map<Integer, Integer> getCountOfPatientForDoctor() {
		return doctorDataBase.getCountOfPatientForDoctor();
	}

	public  int getMinKey() {
		Map<Integer,Integer> patientCount = getCountOfPatientForDoctor();
		Set<Integer> keys = patientCount.keySet();
		int minKey = 0;
		int minValue = Integer.MAX_VALUE;
		for (Integer key : keys) {
			int value = patientCount.get(key);
			if (value < minValue) {
				minValue = value;
				minKey = key;
			}
		}
		return minKey;
	}

}
