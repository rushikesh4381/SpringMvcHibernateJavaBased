package net.codejava.spring.controller;

import java.util.List;

import javax.management.StringValueExp;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codejava.spring.dao.EmployeeDAO;
import net.codejava.spring.model.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@RequestMapping("/employeeList")
	public ModelAndView handleRequest()
	{
	//	System.out.println("Emp DAo "+employeeDAO);
		List<Employee> list = employeeDAO.list();
		ModelAndView model = new ModelAndView("EmployeeList");
		model.addObject("empList",list);
		model.addObject("employee",new Employee());
		System.out.println(list);
		return model;
	}
	
	@RequestMapping("/newEmployee")
	public ModelAndView saveForm()
	{
		System.out.println("saveForm() ...");
		ModelAndView mav = new ModelAndView("EmployeeForm");
		mav.addObject("employee",new Employee());
		return mav;
	}
	
	@RequestMapping(value="/saveEmployee",method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute("employee") Employee employee)
	{
		employeeDAO.saveOrUpdate(employee);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value="/editEmployee",method = RequestMethod.POST)
	public String editEmployee(@RequestParam("id") int employeeid,@RequestParam("employeeName") String employeeName,@RequestParam("employeeAddress") String employeeAddress,@RequestParam("employeeContact") Long employeeContact)
	{
		System.out.println("editEmployee() ////");
		Employee e = employeeDAO.get(employeeid);
		e.setId(employeeid);
		e.setEmployeeName(employeeName);
		e.setEmployeeAddress(employeeAddress);
		e.setEmployeeContact(employeeContact);

		System.out.println("employee Id :"+employeeid);
		System.out.println("employee Name :"+employeeName);
		System.out.println("employee Add :"+employeeAddress);
		System.out.println("employee contact :"+employeeContact);
		//		ModelAndView mav = new ModelAndView("EmployeeForm");
		
		employeeDAO.saveOrUpdate(e);
		
		return "redirect:/employeeList";
	}
	
	/*@RequestMapping("/editEmployee/{id}")
	public ModelAndView editEmployee(@PathVariable("id") int id)
	{
		System.out.println("editEmployee() ////"+id);
	//	int id = Integer.parseInt(request.getParameter("id"));
		Employee e = employeeDAO.get(id);
		ModelAndView mav = new ModelAndView("EmployeeForm");
		mav.addObject("employee",e);
		
		return mav;
	}*/
	
	@RequestMapping("/deleteEmployee")
	public ModelAndView deleteEmployee(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		employeeDAO.delete(id);
		return new ModelAndView("redirect:/employeeList");
		
	}
	
}
