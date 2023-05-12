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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Restaurant update(int restaurantId, Restaurant restaurant) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int restaurantId) {
		// TODO Auto-generated method stub
		return false;
	}

}
