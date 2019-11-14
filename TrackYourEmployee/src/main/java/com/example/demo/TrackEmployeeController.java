package com.example.demo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.modal.Employee;
import com.example.demo.repository.SampleRepo;

@Controller
public class TrackEmployeeController {

	@Autowired
	SampleRepo sampleRepo;

	@RequestMapping("home")
	public String initialMethod() {
		System.out.println("Home method called");
		return "initial";
	}

	@RequestMapping("insertEmployee")
	public ModelAndView insertEmployee(ModelAndView model,Employee emp,HttpServletRequest request) {
		System.out.println("Insert Employee method called");
		System.out.println(emp);
		String deleteMessage ="";
		if(emp.getId()!=0) {
			sampleRepo.save(emp);
			deleteMessage = "Employee Inserted Successfully";
			model.addObject("deleteMessage",deleteMessage);
		}
		model.addObject("deleteMessage",deleteMessage);
		if(request.getParameterMap().containsKey("radioGroup")) {
			model.setViewName("open");
		}else {
			model.setViewName("insert");
		}
		return model;
	}

	@RequestMapping("openAndUpdateEmployee")
	public ModelAndView openAndUpdateEmployee(ModelAndView model,Employee emp,HttpServletRequest request) {
		System.out.println("Update Employee method called");
		System.out.println(emp);
		String deleteMessage ="";
		if(emp.getId()!=0) {
			sampleRepo.save(emp);
			deleteMessage = "Employee Updated Successfully";
			model.addObject("deleteMessage",deleteMessage);
		}
		model.addObject("deleteMessage",deleteMessage);
		model.setViewName("open");
		return model;
	}

	@RequestMapping("deleteEmployee")
	public ModelAndView deleteEmployee(ModelAndView model,HttpServletRequest request, HttpServletResponse response,@RequestParam(value="searchTerm",required=false) Integer searchTerm) {
		System.out.println("Delete Employee method called");
		List<Employee> listEmp = sampleRepo.findAll(new Sort(Sort.Direction.ASC, "id"));
		System.out.println(listEmp);
		String[] values = request.getParameterValues("checkboxGroup");
		String deleteMessage ="";
		if(Objects.nonNull(values)) {
			for(int i=0; i<values.length; i++) {
				sampleRepo.deleteById(Integer.parseInt(values[i]));
			}
			deleteMessage = "Your selected record(s) deleted successfully";
		}else {

			deleteMessage = "";
		}
		List<Employee> listEmp1 = sampleRepo.findAll(new Sort(Sort.Direction.ASC, "id"));
		model.addObject("listEmp", listEmp1);
		model.addObject("deleteMessage",deleteMessage);
		//		model.addObject("listEmp", listEmp);
		if(Objects.nonNull(searchTerm)) {
			List<Employee> emp = new ArrayList<Employee>();
			emp.add(sampleRepo.findById(searchTerm).orElse(new Employee()));
			model.addObject("listEmp", emp);
			if(emp.get(0).getId()==0){
				String msg="This Employee ID does not exist";
				model.addObject("deleteMessage",msg);
				//model.addObject("listEmp", listEmp);

			}else {
				model.addObject("deleteMessage","");
			}
		}else {
			model.addObject("listEmp", listEmp1);
		}
		model.setViewName("delete");
		return model;
	}

	@GetMapping("viewEmployeeDetails")
	public ModelAndView viewEmployeeDetails(ModelAndView model,@RequestParam(value="searchTerm",required=false) Integer searchTerm) throws IOException{
		System.out.println("View Employee method called");
		List<Employee> listEmp = sampleRepo.findAll(new Sort(Sort.Direction.ASC, "id"));
		if(Objects.nonNull(searchTerm)) {
			List<Employee> emp = new ArrayList<Employee>();
			emp.add(sampleRepo.findById(searchTerm).orElse(new Employee()));
			model.addObject("listEmp", emp);
			if(emp.get(0).getId()==0){
				String msg="This Employee ID does not exist";
				model.addObject("deleteMessage",msg);
				//model.addObject("listEmp", listEmp);

			}else {
				model.addObject("deleteMessage","");
			}
		}else {
			model.addObject("listEmp", listEmp);
		}
		model.setViewName("view");
		return model;
	}

	@GetMapping("updateEmployee")
	public ModelAndView updateEmployee(@RequestParam(value="searchTerm",required=false) Integer searchTerm) throws IOException{
		ModelAndView model=new ModelAndView();
		System.out.println("Update Employee method called");
		List<Employee> listEmp = sampleRepo.findAll(new Sort(Sort.Direction.ASC, "id"));
		System.out.println(searchTerm);
		if(Objects.nonNull(searchTerm)) {
			List<Employee> emp = new ArrayList<Employee>();
			emp.add(sampleRepo.findById(searchTerm).orElse(new Employee()));
			model.addObject("listEmp", emp);
			if(emp.get(0).getId()==0){
				String msg="This Employee ID does not exist";
				model.addObject("deleteMessage",msg);
				//model.addObject("listEmp", listEmp);

			}else {
				model.addObject("deleteMessage","");
			}
		}else {
			model.addObject("listEmp", listEmp);
		}
		model.setViewName("update");
		return model;
	}

	@RequestMapping("openEmployee")
	public ModelAndView openEmployee(ModelAndView model,HttpServletRequest request, HttpServletResponse response) {
		System.out.println("openEmployee method called");
		Employee listEmp = new Employee();
		System.out.println(listEmp);
		String[] values = request.getParameterValues("radioGroup");
		if(Objects.nonNull(values)) {
			for(int i=0; i<values.length; i++) {
				Employee tempEmp = sampleRepo.findById(Integer.parseInt(values[i])).orElse(new Employee());
				model.addObject("listEmp", tempEmp);
			}
		}
		//		List<Employee> listEmp1 = sampleRepo.findAll();
		//		model.addObject("listEmp", listEmp1);
		//		model.addObject("deleteMessage",deleteMessage);
		model.setViewName("open");
		return model;
	}
}
