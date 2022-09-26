package com.motivity.demo.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.motivity.demo.controller.model.Appointment;
import com.motivity.demo.controller.model.DoctorRegistration;
import com.motivity.demo.controller.model.PatientDetails;
import com.motivity.demo.repository.AppointmentRepository;
import com.motivity.demo.repository.DoctorRepo;
import com.motivity.demo.repository.PatientRepo;

import net.bytebuddy.asm.Advice.Local;

@Controller
public class HomeController 
{
	@Autowired
	DoctorRepo doctorRepo;
	@Autowired
	PatientRepo patientRepo;
	@Autowired
	HttpSession session;
	@Autowired
	AppointmentRepository appointmentRepository;
	
	ModelAndView mv=new ModelAndView();
	
	@RequestMapping("/home")
	public ModelAndView home()
	{
		mv.setViewName("index");
		session.setAttribute("doctorrepo", doctorRepo);
		session.setAttribute("appointmentRepository", appointmentRepository);
		return mv;	
	}
	@RequestMapping("/doctorRegistration")
	public ModelAndView doctorRegistration(DoctorRegistration doctorRegistration)
	{
		DoctorRegistration d2 =doctorRepo.save(doctorRegistration);
		if(d2==null)
		{
			mv.setViewName("doctorregistration");
			return mv;
		}
		else
		{
			mv.setViewName("doctorlogin");
			return mv;
		}	
	}
	@RequestMapping("/doctorloginm" )
	public ModelAndView doctorloginm(@RequestParam(name = "email") String email,
									@RequestParam(name = "password") String password ) 
	{
		DoctorRegistration d1 = doctorRepo.checklogin(email, password);
		
		if(d1 != null)
		{
		
		if(d1.getEmail().equalsIgnoreCase(email)&&d1.getPassword().equalsIgnoreCase(password))
		{
			session.setAttribute("df", d1);
		  	mv.setViewName("doctorprofile");
			return mv;
			
			
		}
		else
		{
			mv.setViewName("doctorlogin");
			return mv;
			
		}
		}
		else
		{
			mv.setViewName("doctorlogin");
			return mv;
			
		}
	}
	@RequestMapping("/patientRegister")
	public ModelAndView patientRegister(PatientDetails pd)
	{
		
		PatientDetails pd1 = patientRepo.save(pd);
		if(pd1==null)
		{
			mv.setViewName("patient_registration");
		}
		else
		{
			mv.setViewName("patient_login");
		}
		return mv;
	}

	@RequestMapping("/patientLogin")
	public ModelAndView patientLogin(@RequestParam(name="pemail")String email,@RequestParam(name="ppassword")String password)
	{
		PatientDetails pd=patientRepo.patientLogin(email, password);
		if(pd!=null)
		{
			if(pd.getEmail().equalsIgnoreCase(email)&&pd.getPpassword().equalsIgnoreCase(password))
			{
				session.setAttribute("plname",pd.getPname());
				session.setAttribute("currentpatient",pd);
				mv.setViewName("patient_profile");
			}
			else
			{
				mv.setViewName("patient_login");
			}
		}
		else
		{
			mv.setViewName("patient_login");
		}
		
		return mv;
	}
	@RequestMapping("/insertAppointment")
	public ModelAndView insertAppointment(@RequestParam(name="problem") String problem)
	{
		PatientDetails pd=(PatientDetails)session.getAttribute("currentpatient");
		Appointment ap =new Appointment();
		//ap.setApplydate(LocalDate.now().format(DateTimeFormatter.ofPattern("dd-mm-yyyy")));
		ap.setProblem(problem);
		ap.setPatientage(pd.getAge());
		ap.setPatientgender(pd.getPgender());
		ap.setPatientid(Integer.toString(pd.getPid()));
		ap.setPatientname(pd.getPname());
		ap.setPatientphno(pd.getPphno());
		ap.setStatus("pending");
		Appointment ap2=appointmentRepository.save(ap);
		if(ap2 !=null)
		{
			session.setAttribute("patientappiontment", ap2);
			mv.setViewName("appointment_status");
		}
		else
		{
			mv.setViewName("apply_appointment");
		}
		
		return mv;
	}
	@RequestMapping("/acceptAppointment")
	public ModelAndView acceptAppointment(@RequestParam(name = "date") String date,
								  @RequestParam(name = "aid") int aid1,
								  @RequestParam(name = "time")String time)
	{
		DoctorRegistration dr=(DoctorRegistration)session.getAttribute("df");
		
		 
		
		
		int a=appointmentRepository.acceptUpdate(time, date, dr.getFirstname()+" "+dr.getLastname(), dr.getGender(), aid1,"accepted",dr.getPhoneno());
		if(a != 0)
		{
			mv.setViewName("show_application");
		}
		else
		{
			mv.setViewName("doctorprofile");
		}
		
		return mv;
	}
	@RequestMapping("/deleteAppointment")
	public ModelAndView deleteAppointment(@RequestParam(name = "aid") int aid1)
	{
		 appointmentRepository.deleteById(aid1);
		 mv.setViewName("view_appointments");
		 return mv;
	}
	
	
	
}

















