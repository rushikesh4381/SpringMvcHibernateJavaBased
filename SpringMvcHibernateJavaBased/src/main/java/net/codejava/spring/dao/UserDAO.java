package net.codejava.spring.dao;

import java.util.List;

import net.codejava.spring.model.User;

public interface UserDAO {
	public List<User> list();
	
	public void saveOrUpdate(User u);
	
	public User get(int id);
	
	public void delete(int id);
}