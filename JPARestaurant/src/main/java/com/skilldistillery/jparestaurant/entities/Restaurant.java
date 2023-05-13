package com.skilldistillery.jparestaurant.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Restaurant {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	private String street;
	private String cuisine;

	@Column(name = "website_url")
	private String websiteUrl;

	private String phone;

	@Column(name = "happy_hour")
	private boolean happyHour;

	private double rating;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCuisine() {
		return cuisine;
	}

	public void setCuisine(String cuisine) {
		this.cuisine = cuisine;
	}

	public String getWebsiteUrl() {
		return websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public boolean isHappyHour() {
		return happyHour;
	}

	public void setHappyHour(boolean happyHour) {
		this.happyHour = happyHour;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Restaurant [id=" + id + ", name=" + name + ", street=" + street + ", cuisine=" + cuisine
				+ ", websiteUrl=" + websiteUrl + ", phone=" + phone + ", happyHour=" + happyHour + ", rating=" + rating
				+ "]";
	}

}
