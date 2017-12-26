package net.codejava.spring.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.engine.transaction.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codejava.spring.dao.UserDAO;
import net.codejava.spring.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private UserDAO userDao;

	/*@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception {
		List<User> listUsers = userDao.list();
		ModelAndView model = new ModelAndView("UserList");
		model.addObject("userList", listUsers);
		return model;
	}
*/
	@RequestMapping("/")
	public ModelAndView handleRequest(Locale locale) throws Exception {
		System.out.println("Locale :- "+locale);
		ModelAndView model = new ModelAndView("index");
		
		return model;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		System.out.println("loginPage() method .....");
		return "loginPage";
	}
	
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "accessDenied";
	}
	
	@RequestMapping("/userList")
	public ModelAndView userList()
	{
		System.out.println("userList() called ...");
		List<User> listUsers = userDao.list();
		ModelAndView model = new ModelAndView("UserList");
		model.addObject("userList",listUsers);
		model.addObject("user", new User());
	
		return model;
	}
	
	@RequestMapping(value = "/newUser", method = RequestMethod.GET)
	public ModelAndView newUser(Model map) {
//		ModelAndView model = new ModelAndView("UserList");
	//	map.addAttribute("user", new User());

		return new ModelAndView("redirect:/UserList");		
	}
	
	@RequestMapping(value = "/editUser", method = RequestMethod.POST)
	public String editUser(@RequestParam("id") int id,@RequestParam("email") String email,@RequestParam("username") String username,@RequestParam("password") String password) {
	//	int userId = Integer.parseInt(request.getParameter("id"));
		System.out.println("User ID (editUSer()): "+id);
		System.out.println("User User Name (editUSer()): "+username);
		System.out.println("User Password (editUSer()): "+password);
		System.out.println("User Email (editUSer()): "+email);
		
		User user = userDao.get(id);
		user.setId(id);		
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		List<User> listUsers = userDao.list();
		System.out.println("User List (editUSer() :"+listUsers);
	//	ModelAndView model = new ModelAndView("redirect:/UserList");
/*		map.addAttribute("userList",listUsers); //addObject("userList",listUsers);
		map.addAttribute("user", user);
*/		userDao.saveOrUpdate(user);
			
		return "redirect:/userList";
	}
	
	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		userDao.delete(userId);
		return new ModelAndView("redirect:/userList");		
	}
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user") User user,BindingResult result) {
		System.out.println("#user id "+user.getId());
		System.out.println("#user name "+user.getUsername());
		System.out.println("#user email"+user.getEmail());
		System.out.println("#user password"+user.getPassword());
		
		if(result.hasErrors())
		{
			System.out.println("Binding Error :"+result.getAllErrors());
		}
		
		userDao.saveOrUpdate(user);
		return new ModelAndView("redirect:/userList");
	}
	
	
	public String getPrincipal()
	{
		String username=null;
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	
		if(principal instanceof UserDetails)
		{
			username = ((UserDetails)principal).getUsername();
		}
		else
			username = principal.toString();
		return username;
	}
	
}
