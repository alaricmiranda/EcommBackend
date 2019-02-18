package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public String showIndex()
	{ 
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
