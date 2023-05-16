package com.skilldistillery.jparestaurant.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jparestaurant.data.RestaurantDAO;
import com.skilldistillery.jparestaurant.entities.Restaurant;

@Controller
public class RestaurantController {

	@Autowired
	private RestaurantDAO rDao;
	
	@RequestMapping(path={"/","home.do"})
	public String home(Model model) {
		model.addAttribute("restaurantList", rDao.findAll());
		return "home";
	}
	
	@RequestMapping("getRestaurant.do")
	public ModelAndView getRestaurant() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("getRestaurant");
		return mv;	
	}
	
	@RequestMapping("findRestaurant.do")
	public ModelAndView findRestaurant(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		Restaurant restaurant = rDao.findById(id);
		mv.addObject("restaurant", restaurant);
		mv.setViewName("restaurant");
		return mv;	
	}
	
	@RequestMapping("add.do")
	public ModelAndView addRestaurant() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add");
		return mv;	
	}
	
	@RequestMapping("adder.do")
	public ModelAndView adderRestaurant(@RequestParam("name") String name, @RequestParam("street") String street, 
			@RequestParam("cuisine") String cuisine, @RequestParam("websiteUrl") String websiteUrl, 
			@RequestParam("phone") String phone, @RequestParam("happyHour") boolean happyHour,
			@RequestParam("rating") double rating) {
		ModelAndView mv = new ModelAndView();
		Restaurant restaurant = new Restaurant(name, street, cuisine, websiteUrl, phone, happyHour, rating);
		rDao.create(restaurant);
		if (restaurant.getId() != 0) {
			mv.addObject("restaurant", restaurant);
		}
		mv.setViewName("restaurant");
		return mv;	
	}

	@RequestMapping("update.do")
	public ModelAndView updater(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		Restaurant restaurant = rDao.findById(id);
		mv.addObject("restaurant", restaurant);
		mv.setViewName("update");
		return mv;
	}
	
	
	@RequestMapping("updated.do")
	public ModelAndView updateRestaurant(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("street") String street, 
			@RequestParam("cuisine") String cuisine, @RequestParam("websiteUrl") String websiteUrl, 
			@RequestParam("phone") String phone, @RequestParam("happyHour") boolean happyHour,
			@RequestParam("rating") double rating) {
		ModelAndView mv = new ModelAndView();
		Restaurant restaurant = new Restaurant(name, street, cuisine, websiteUrl, phone, happyHour, rating);
		restaurant = rDao.update(id, restaurant);
		mv.addObject("restaurant", restaurant);
		mv.setViewName("restaurant");
		return mv;	
	}	
	
	@RequestMapping("delete.do")
	public ModelAndView deleter() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("restaurantList", rDao.findAll());
		mv.setViewName("delete");
		return mv;	
	}
	
	@RequestMapping("deleted.do")
	public ModelAndView deletedRestaurant(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		Restaurant restaurant = rDao.findById(id);
		rDao.deleteById(id);
		mv.addObject("restaurant", restaurant);
		mv.setViewName("restaurant");
		return mv;	
	}
}