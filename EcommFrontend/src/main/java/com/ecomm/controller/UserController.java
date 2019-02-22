package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.UserDao;
import com.ecomm.model.User;

@Controller
public class UserController 
{
	@Autowired
	UserDao userDAO;
	
	@RequestMapping(value="/user")
	public String showUser(Model m)
	{
		List<User> listUsers=userDAO.listUsers();
		//binding the listCategories and sending to jsp page
		m.addAttribute("listUsers", listUsers); 
		return "User";
	}
	
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public String addUserDetail(@RequestParam("userName")String userName,@RequestParam("userEmailId")String userEmailId,@RequestParam("userContact")String userContact,@RequestParam("userPassword")String userPassword,Model m)
	{
		User user=new User();
		user.setUserName(userName);
		user.setUserEmailId(userEmailId);
		user.setUserContact(userContact);
		user.setUserPassword(userPassword);
			
		userDAO.add(user);
		
		List<User> listUsers=userDAO.listUsers();
		//binding the listCategories and sending to jsp page
		m.addAttribute("listUsers", listUsers); 
		return "User";
	}
	
	@RequestMapping(value="/deleteUser/{userId}")
	public String deleteUser(@PathVariable("userId")int userId,Model m)
	{
		User user=userDAO.getUser(userId);
		userDAO.delete(user);
		
		List<User> listUsers=userDAO.listUsers();
		//binding the listCategories and sending to jsp page
		m.addAttribute("listUsers", listUsers); 
		return "User";
	}
	
	@RequestMapping(value="/editUser/{userId}")
	public String editUser(@PathVariable("userId")int userId,Model m)
	{
		User user=userDAO.getUser(userId);
		m.addAttribute("user",user);
		return "UpdateUser";
	}
	
	@RequestMapping(value="/updateUser",method=RequestMethod.POST)
	public String updateUser(@RequestParam("userId")int userId,@RequestParam("userName")String userName,@RequestParam("userEmailId")String userEmailId,@RequestParam("userContact")String userContact,@RequestParam("userPassword")String userPassword,Model m)
	{
		User user=userDAO.getUser(userId);
		
		user.setUserName(userName);
		user.setUserEmailId(userEmailId);
		user.setUserContact(userContact);
		user.setUserPassword(userPassword);
		userDAO.update(user);
		
		List<User> listUsers=userDAO.listUsers();
		//binding the listCategories and sending to jsp page
		m.addAttribute("listUsers", listUsers); 
		return "User";
	}
}
