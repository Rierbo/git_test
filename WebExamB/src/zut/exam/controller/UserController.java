package zut.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zut.exam.pojo.Employee;
import zut.exam.pojo.User;
import zut.exam.service.EmployeeService;
import zut.exam.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private EmployeeService employeeService;
	@RequestMapping(value="/checklogin",method=RequestMethod.POST)
	public String checkLogin(String username,String password,Model model){
		System.out.println(username+"------"+password);
		List<User> userList = userService.getAllUser();
		for(int  i=0;i<userList.size();i++){
			if(userList.get(i).getUsername().equals(username)&&userList.get(i).getPassword().equals(password)){
				List<Employee> employeeList = employeeService.getAllEmployee();
				model.addAttribute("employeelist",employeeList);
				return "showemployee";
			}
		}
		return "error";
	}
}
