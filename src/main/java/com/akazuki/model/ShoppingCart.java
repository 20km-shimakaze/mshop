package com.akazuki.model;

public class ShoppingCart {
	private int cart_id;
	private int product_id;
	private int user_id;
	private int cart_num;
	private String cart_time;

	public ShoppingCart() {
	}

	public ShoppingCart(int cart_id, int product_id, int user_id, int cart_num, String cart_time) {
		this.cart_id = cart_id;
		this.product_id = product_id;
		this.user_id = user_id;
		this.cart_num = cart_num;
		this.cart_time = cart_time;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getCart_num() {
		return cart_num;
	}

	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}

	public String getCart_time() {
		return cart_time;
	}

	public void setCart_time(String cart_time) {
		this.cart_time = cart_time;
	}
}
