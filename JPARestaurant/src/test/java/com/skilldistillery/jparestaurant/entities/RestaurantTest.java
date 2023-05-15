package com.skilldistillery.jparestaurant.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class RestaurantTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Restaurant restaurant;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPARestaurant");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		restaurant = em.find(Restaurant.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		restaurant = null;
	}

	@Test
	void test_Restaurant_entity_mapping() {
		assertNotNull(restaurant);
		assertEquals("Pompeyos Mexican Grill", restaurant.getName());
		assertEquals("1120 S State Ave", restaurant.getStreet());
		assertEquals("Mexican", restaurant.getCuisine());
		assertEquals("https://www.facebook.com/people/Pompeyos-Mexican-grill/100063639037783/", restaurant.getWebsiteUrl());
		assertEquals("9893402036", restaurant.getPhone());
		assertEquals(false, restaurant.isHappyHour());
		assertEquals(4.5, restaurant.getRating());
	}

}
