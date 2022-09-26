package com.motivity.demo.controller.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Appointment 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int aid;
	private String patientid;
	private String patientname;
	private String patientphno;
	private String patientgender;
	private String patientage;
	private String problem;
	private String applydate;
	private String time;
	private String aptdate;
	private String doctorname;
	private String doctorgender;
	private String doctorphno;
	private String status;
	public String getPatientgender() {
		return patientgender;
	}
	public void setPatientgender(String patientgender) {
		this.patientgender = patientgender;
	}
	public String getDoctorgender() {
		return doctorgender;
	}
	public void setDoctorgender(String doctorgender) {
		this.doctorgender = doctorgender;
	}
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getPatientid() {
		return patientid;
	}
	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getPatientphno() {
		return patientphno;
	}
	public void setPatientphno(String patientphno) {
		this.patientphno = patientphno;
	}
	public String getPatientage() {
		return patientage;
	}
	public void setPatientage(String patientage) {
		this.patientage = patientage;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getApplydate() {
		return applydate;
	}
	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getAptdate() {
		return aptdate;
	}
	public void setAptdate(String aptdate) {
		this.aptdate = aptdate;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getDoctorphno() {
		return doctorphno;
	}
	public void setDoctorphno(String doctorphno) {
		this.doctorphno = doctorphno;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Appointment(int aid, String patientid, String patientname, String patientphno, String patientgender,
			String patientage, String problem, String applydate, String time, String aptdate, String doctorname,
			String doctorgender, String doctorphno, String status) {
		super();
		this.aid = aid;
		this.patientid = patientid;
		this.patientname = patientname;
		this.patientphno = patientphno;
		this.patientgender = patientgender;
		this.patientage = patientage;
		this.problem = problem;
		this.applydate = applydate;
		this.time = time;
		this.aptdate = aptdate;
		this.doctorname = doctorname;
		this.doctorgender = doctorgender;
		this.doctorphno = doctorphno;
		this.status = status;
	}
	public Appointment() {
		super();
	}
	
	
	
	

}
