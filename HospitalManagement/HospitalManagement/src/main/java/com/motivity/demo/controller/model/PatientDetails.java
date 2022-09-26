package com.motivity.demo.controller.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.context.annotation.Scope;

@Entity
@Scope(value = "Prototype")
public class PatientDetails 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pid;
	private String pname;
	private String age;
	private String paddress;
	private String email;
	private String pgender;
	private String pphno;
	private String ppassword;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPgender() {
		return pgender;
	}
	public void setPgender(String pgender) {
		this.pgender = pgender;
	}
	public String getPphno() {
		return pphno;
	}
	public void setPphno(String pphno) {
		this.pphno = pphno;
	}
	public String getPpassword() {
		return ppassword;
	}
	public void setPpassword(String ppassword) {
		this.ppassword = ppassword;
	}
	public PatientDetails(int pid, String pname, String age, String paddress, String email, String pgender,
			String pphno, String ppassword) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.age = age;
		this.paddress = paddress;
		this.email = email;
		this.pgender = pgender;
		this.pphno = pphno;
		this.ppassword = ppassword;
	}
	public PatientDetails() {
		super();
	}
	
	
	
			
	

}
