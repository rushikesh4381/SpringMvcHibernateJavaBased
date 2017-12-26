package net.codejava.spring.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomSuccessHandler extends  SimpleUrlAuthenticationSuccessHandler
{
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	
	public RedirectStrategy getRedirectStrategy() {
		return redirectStrategy;
	}


	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}
	
	@Override
	protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {

		String targetUrl = determineTargetUrl(authentication);
		System.out.println("Target Url :"+targetUrl);
		if(response.isCommitted())
		{
			System.out.println("can not redirect !!!");
			return;
		}
			
		redirectStrategy.sendRedirect(request, response, targetUrl);
	}


	/*This method extract role of currently logged-in user and returns
	 * approprite url according to his role 
	 */
	public String determineTargetUrl(Authentication authentication)
	{
		String url = "";
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		
		List roles = new ArrayList<>();
		
		for(GrantedAuthority a : authorities)
		{
			roles.add(a.getAuthority());
		}
		
		if(isUser(roles))
		{
			System.out.println("userList !!!");
			url = "/userList";
		}
		else if(isSupport(roles))
		{
			url = "/employeeList";
		}
		else
			url = "/accessDenied";
		return url;
		
	}
	
	public boolean isUser(List roles)
	{
		if(roles.contains("ROLE_USER"))
		{
			return true;
		}
		else
			return false;
	}
	
	public boolean isSupport(List roles)
	{
		if(roles.contains("ROLE_SUPPORT"))
			return true;
		else
			return false;
	}
	
}
