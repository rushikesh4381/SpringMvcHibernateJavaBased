package net.codejava.spring.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employees")
public class Employee {
	private int id;
	private String employeeName;
	private String employeeAddress;
	private Long employeeContact;
	
	@Id
	@GeneratedValue
	@Column(name = "employeeId")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeAddress() {
		return employeeAddress;
	}
	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}
	public Long getEmployeeContact() {
		return employeeContact;
	}
	public void setEmployeeContact(Long employeeContact) {
		this.employeeContact = employeeContact;
	}
	
	
	
	
}
