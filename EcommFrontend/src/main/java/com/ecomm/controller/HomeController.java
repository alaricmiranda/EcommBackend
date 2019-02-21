package com.ecomm.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDao;
import com.ecomm.model.Category;
@Controller
public class HomeController {
	@Autowired
	CategoryDao categoryDAO;
	@RequestMapping(value = "/")
	public String showIndex(Model m)
	{ 
		List<Category> listCategories=categoryDAO.listCategories();
		//binding the listCategories and sending to jsp page
		m.addAttribute("listCategories", listCategories); 
		return "index";
	}
	@RequestMapping(value = "/contact")
	public String showContact()
	{ 
		return "contact";
	}
	@RequestMapping(value = "/cart")
	public String showCart()
	{ 
		return "cart";
	}

}
