package net.codejava.spring;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Test;

import net.test.Addition;

public class AdditionTestCase {

	@Test
	public void test() {
		Addition addTestCase = new Addition();
		int add = addTestCase.add(10, 20);
		Assert.assertEquals(30, add);
	}

}
