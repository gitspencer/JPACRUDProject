package com.skilldistillery.jparestaurant.data;

import java.util.List;

import com.skilldistillery.jparestaurant.entities.Restaurant;

public interface RestaurantDAO {

	Restaurant findById(int restaurantId);
	List<Restaurant> findAll();
	Restaurant create(Restaurant restaurant);
	Restaurant update(int restaurantId, Restaurant restaurant);
	boolean deleteById(int restaurantId);
	
}
