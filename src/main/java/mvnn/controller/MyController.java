package mvnn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mvnn.dao.EmployeeDao;
import mvnn.dto.Employee;

@Controller

public class MyController
{
	@Autowired
	EmployeeDao dao;
	
	@GetMapping("/")
	public String loadMain()
	{
		return "main.jsp";
	}
	@GetMapping("/add")
	public String loadAdd()
	{
		return "add.jsp";
	}
	
	@PostMapping("/add")
	public String add(Employee employee,Model model)
	{
		
		dao.save(employee);
		model.addAttribute("message", "Employee added successfull");
		return "main.jsp";
		
	}
	
	@RequestMapping("/fetch")
	public String fetchAll(Model model)
	{
		List<Employee> list =dao.fetchAll();
		if(list.isEmpty()) {
			model.addAttribute("message","No records found");
			return "main.jsp";
		}
		else {
			model.addAttribute("list", list);
			return "fetch.jsp";
		}
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam int id,Model model)
	{
		Employee employee=dao.fetch(id);
		dao.delete(employee);
		model.addAttribute("m", "Record deleted successfully");
		return "fetch";
	}
	
	@GetMapping("/edit")
	public String edit(@RequestParam int id,Model model)
	{
		Employee employee=dao.fetch(id);
		model.addAttribute("emp", employee);
		
		return "edit.jsp";
	}
	
	@PostMapping("/edit")
	public String edit(Employee employee,Model model)
	{
		dao.update(employee);
		model.addAttribute("emp", "Employee update successfully");		
		return "fetch";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
