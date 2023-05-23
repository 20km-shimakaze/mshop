package com.akazuki.model;

public class ProductImg {
	private int id;
	private int product_id;
	private String url;
	private String created_time;

	public ProductImg() {
	}

	public ProductImg(int id, int product_id, String url, String created_time) {
		this.id = id;
		this.product_id = product_id;
		this.url = url;
		this.created_time = created_time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCreated_time() {
		return created_time;
	}

	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
}
