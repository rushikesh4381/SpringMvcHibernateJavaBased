package net.codejava.spring;

import org.junit.Assert;
import org.junit.Test;

import net.test.Concatation;

public class DemoTestCase {
	
	@Test
	public void testConcat()
	{
		Concatation cat = new Concatation();
		String res = cat.concat("Hello", "World");
		Assert.assertEquals("HelloWorld",res);
	}
}
