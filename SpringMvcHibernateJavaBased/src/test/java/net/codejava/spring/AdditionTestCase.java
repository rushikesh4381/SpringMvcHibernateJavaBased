package net.codejava.spring;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import net.test.Addition;

public class AdditionTestCase {

	@Test
	public void test() {
		Addition addTestCase = new Addition();
		int add = addTestCase.add(10, 20);
		Assert.assertEquals(30, add);
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
