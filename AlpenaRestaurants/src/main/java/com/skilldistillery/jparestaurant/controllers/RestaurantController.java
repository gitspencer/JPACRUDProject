package com.skilldistillery.jparestaurant.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jparestaurant.data.RestaurantDAO;

@Controller
public class RestaurantController {

	@Autowired
	private RestaurantDAO rDao;
	
	@RequestMapping(path={"/","home.do"})
	public String home(Model model) {
		model.addAttribute("restaurantList", rDao.findAll());
		return "home";
	}
	
}
