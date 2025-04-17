package mvnn.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee
{
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Id
  private int id;
  private String name;
  private String eid;
  private double salary;
  private int experience;
@Override
public String toString() {
	return "Employee [id=" + id + ", name=" + name + ", eid=" + eid + ", salary=" + salary + ", experience="
			+ experience + "]";
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEid() {
	return eid;
}
public void setEid(String eid) {
	this.eid = eid;
}
public double getSalary() {
	return salary;
}
public void setSalary(double salary) {
	this.salary = salary;
}
public int getExperience() {
	return experience;
}
public void setExperience(int experience) {
	this.experience = experience;
}
}
