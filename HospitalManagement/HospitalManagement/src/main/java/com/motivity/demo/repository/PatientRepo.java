package com.motivity.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import com.motivity.demo.controller.model.PatientDetails;

public interface PatientRepo extends CrudRepository<PatientDetails, Integer>
{
	@Query("select p from PatientDetails p where p.email=:email and p.ppassword=:ppassword")
	public PatientDetails patientLogin(String email,String ppassword);
	
//	@Query("select p from PatientDetails p where p.prob =:d_dept")
//	public Iterable<PatientDetails> patientbyprob(String d_dept);
}

