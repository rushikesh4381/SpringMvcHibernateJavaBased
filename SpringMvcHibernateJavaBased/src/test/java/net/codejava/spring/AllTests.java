package net.codejava.spring;

import org.junit.runner.JUnitCore;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)   
@SuiteClasses({AdditionTestCase.class,DemoTestCase.class})
public class AllTests {   // Test suite
	
}
