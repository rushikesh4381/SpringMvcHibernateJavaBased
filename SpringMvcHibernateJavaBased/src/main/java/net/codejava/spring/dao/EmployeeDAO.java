package net.codejava.spring.dao;

import java.util.List;

import net.codejava.spring.model.Employee;

public interface EmployeeDAO {
	public List<Employee> list();
	
	public void saveOrUpdate(Employee e);
	
	public Employee get(int id);
	
	public void delete(int id);
	
	
}
