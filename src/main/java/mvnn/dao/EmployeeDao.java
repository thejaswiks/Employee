package mvnn.dao;

import java.lang.management.ManagementFactory;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

import mvnn.dto.Employee;

@Component
public class EmployeeDao 
{
  EntityManagerFactory factory=Persistence.createEntityManagerFactory("mvnn");
  EntityManager manager=factory.createEntityManager();
  EntityTransaction transaction=manager.getTransaction();
  
 
  
  
  public void save(Employee emp)
  {
	  transaction.begin();
	  manager.persist(emp);
	  transaction.commit();
  }
  public void delete(Employee emp)
  {
	  transaction.begin();
	  manager.remove(emp);
	  transaction.commit();
  }
  public Employee  fetch(int id)
  {
	  return manager.find(Employee.class, id);
  }
  public void update(Employee emp)
  {
	  transaction.begin();
	  manager.merge(emp);
	  transaction.commit();
  }
  
 public List<Employee> fetchAll()
 {
	 return manager.createNativeQuery("select * from employee", Employee.class).getResultList();
 }
	
}
