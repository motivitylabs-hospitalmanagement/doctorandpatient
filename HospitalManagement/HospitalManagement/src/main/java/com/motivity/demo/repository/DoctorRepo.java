package com.motivity.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.motivity.demo.controller.model.DoctorRegistration;

public interface DoctorRepo extends CrudRepository<DoctorRegistration, Integer>
{
	@Query("select d from DoctorRegistration d where d.email=:email and d.password=:password")
	public DoctorRegistration checklogin(String email,String password);
}
     