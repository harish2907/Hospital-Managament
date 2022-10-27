import java.util.Set;

import com.aspire.entity.Patient;
import com.aspire.service.AppointmentController;
import com.aspire.service.PatientController;

public class TestApplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AppointmentController appointmentController = new AppointmentController();
		PatientController dc = new PatientController();
		Set<Patient> list=dc.listOfPatients();
		for(Patient app:list) {
			System.out.println(app.getPatientId());
		}
		
		
	}

}
