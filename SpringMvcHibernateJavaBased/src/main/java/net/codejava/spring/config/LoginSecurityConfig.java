package net.codejava.spring.config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class LoginSecurityConfig extends WebSecurityConfigurerAdapter {

	/*@Autowired
	CustomSuccessHandler customSuccessHandler;*/
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder authenticationMgr) throws Exception {
		authenticationMgr.inMemoryAuthentication().withUser("rushikesh2509").password("rushikesh2509").roles("ADMIN");		
		
		authenticationMgr.inMemoryAuthentication().withUser("rutu2501").password("rutu2501").roles("USER");
		
		authenticationMgr.inMemoryAuthentication().withUser("brahma2504").password("brahma2504").roles("SUPPORT");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()                                                                
		.antMatchers("/").permitAll()                  
		.antMatchers("/userList").hasRole("USER")                                     
		.antMatchers("/employeeList").hasRole("USER")            
		.anyRequest().authenticated()                                                   
		.and()
		.formLogin();
	}
}