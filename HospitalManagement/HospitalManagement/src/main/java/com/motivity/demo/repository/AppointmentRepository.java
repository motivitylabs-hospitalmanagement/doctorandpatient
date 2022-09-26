package com.motivity.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.motivity.demo.controller.model.Appointment;

public interface AppointmentRepository extends CrudRepository<Appointment,Integer> 
{
	@Query("select a from Appointment a where a.patientid=:patientid")
	public List<Appointment> patientsidestatus(String patientid);
	
	@Query("select a from Appointment a where a.problem=:doctordept and status=:status")
	public List<Appointment> showAndAcceptAppointment(String doctordept,String status);
	
	@Transactional
	@Modifying
	@Query("update Appointment a set a.doctorphno=:doctorphno,a.status=:status, a.time=:time,a.aptdate=:date,a.doctorname=:doctorname,a.doctorgender=:doctorgender where a.aid=:aid")
	public int acceptUpdate(String time,String date,String doctorname,String doctorgender,int aid,String status,String doctorphno);
	
	

}
