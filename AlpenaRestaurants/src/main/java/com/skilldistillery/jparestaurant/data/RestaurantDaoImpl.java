package com.skilldistillery.jparestaurant.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jparestaurant.entities.Restaurant;

@Service
@Transactional
public class RestaurantDaoImpl implements RestaurantDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Restaurant findById(int restaurantId) {
		return em.find(Restaurant.class, restaurantId);
	}

	@Override
	public List<Restaurant> findAll() {
		String jpql = "SELECT r FROM Restaurant r";
		return em.createQuery(jpql, Restaurant.class).getResultList();
	}

	@Override
	public Restaurant create(Restaurant restaurant) {
		em.persist(restaurant);
		return restaurant;
	}

	@Override
	public Restaurant update(int restaurantId, Restaurant restaurant) {
		Restaurant updated = em.find(Restaurant.class, restaurantId);
		updated.setName(restaurant.getName());
		updated.setStreet(restaurant.getStreet());
		updated.setCuisine(restaurant.getCuisine());
		updated.setWebsiteUrl(restaurant.getWebsiteUrl());
		updated.setPhone(restaurant.getPhone());
		updated.setHappyHour(restaurant.isHappyHour());
		updated.setRating(restaurant.getRating());
		em.persist(updated);
		return updated;
	}

	@Override
	public boolean deleteById(int restaurantId) {
		Restaurant restaurant = em.find(Restaurant.class, restaurantId);
		em.remove(restaurant);
		return true;
	}

}
