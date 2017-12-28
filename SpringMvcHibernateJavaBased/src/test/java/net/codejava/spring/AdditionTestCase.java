package net.codejava.spring;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.After;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import net.codejava.spring.config.ApplicationContextConfig;
import net.codejava.spring.dao.UserDAO;
import net.codejava.spring.model.User;
import net.test.Addition;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = ApplicationContextConfig.class)
@WebAppConfiguration
public class AdditionTestCase {
	
	@Autowired
	UserDAO userDAO;
	
	@Test
	public void test() {
		
		/*Addition addTestCase = new Addition();
		int add = addTestCase.add(10, 20);
		Assert.assertEquals(30, add);*/
		
	//	System.out.println("sessionfactory :"+sessionFactory);
		System.out.println("user dao object :"+userDAO);
		
		User user = new User();
		user.setUsername("Alex123");
		user.setPassword("alex3222");
		user.setEmail("alex@gmail.com");
		
		userDAO.saveOrUpdate(user);
		List<User> list =userDAO.list();
		String actualUserName = null;
		String actualPassword = null;
		String actualEmail = null;
		for(User u : list)
		{
			actualUserName = u.getUsername();
			actualEmail = u.getEmail();
			actualPassword = u.getPassword();
			
			if(user.getUsername().equalsIgnoreCase(actualUserName) && user.getPassword().equalsIgnoreCase(actualPassword)
					&& user.getEmail().equalsIgnoreCase(actualEmail))
			{
				break;
			}
		}
		assertEquals(user.getUsername(),actualUserName);
		assertEquals(user.getPassword(), actualPassword);
		assertEquals(user.getEmail(), actualEmail);
	}
	
	@Before
	public void beforeTest()
	{
		System.out.println("This will execute before each test");
	}

	@After
	public void afterTest()
	{
		System.out.println("This will execute after each test");
	}
}
