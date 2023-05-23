package com.akazuki.model;

public class Product {
	private int product_id;
	private String product_name;
	private int category_id;
	private int product_count;
	private int product_status;
	private String create_time;
	private String default_img;
	private double product_price;

	public Product() {
	}

	public Product(int product_id, String product_name, int category_id, int product_count, int product_status, String create_time, String default_img, double product_price) {
		this.product_id = product_id;
		this.product_name = product_name;
		this.category_id = category_id;
		this.product_count = product_count;
		this.product_status = product_status;
		this.create_time = create_time;
		this.default_img = default_img;
		this.product_price = product_price;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public int getProduct_status() {
		return product_status;
	}

	public void setProduct_status(int product_status) {
		this.product_status = product_status;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}

	public String getDefault_img() {
		return default_img;
	}

	public void setDefault_img(String default_img) {
		this.default_img = default_img;
	}

	public double getProduct_price() {
		return product_price;
	}

	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}
}
