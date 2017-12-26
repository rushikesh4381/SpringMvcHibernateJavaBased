package net.codejava.spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.codejava.spring.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	 public EmployeeDAOImpl() {
	
	}
	
	/* @Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		 sessionFactory.close();
	}*/
	 
	public EmployeeDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	@Transactional
	public List list() {
		System.out.println("Factory :"+sessionFactory.toString());
		@SuppressWarnings("unchecked")
		List<Employee> list = sessionFactory.getCurrentSession().createCriteria(Employee.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	
		return list;
	}

	@Override
	@Transactional
	public void saveOrUpdate(Employee employee) {
		System.out.println("save employee ...");
		sessionFactory.getCurrentSession().saveOrUpdate(employee);
		System.out.println("Emp saved ...");
	}

	@Override
	@Transactional
	public Employee get(int id) {
		System.out.println("get() of emp");
		String hql = "from Employee e where id="+id;
		Employee employee = (Employee) sessionFactory.getCurrentSession().createQuery(hql).list().get(0);
		if(employee != null)
		{
			return employee;
		}
		
		return null;
	}

	@Override
	@Transactional
	public void delete(int id) {
		Employee empToDelete = new Employee();
		empToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(empToDelete);
		System.out.println("delete() ////////");
	}

}
