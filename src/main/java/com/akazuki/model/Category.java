package com.akazuki.model;

public class Category {
	private int category_id;
	private String category_name;
	private int category_level;
	private int parent_id;
	private String category_icon;
	private String category_pic;

	public Category() {
	}

	public Category(int category_id, String category_name, int category_level, int parent_id, String category_icon, String category_pic) {
		this.category_id = category_id;
		this.category_name = category_name;
		this.category_level = category_level;
		this.parent_id = parent_id;
		this.category_icon = category_icon;
		this.category_pic = category_pic;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public int getCategory_level() {
		return category_level;
	}

	public void setCategory_level(int category_level) {
		this.category_level = category_level;
	}

	public int getParent_id() {
		return parent_id;
	}

	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}

	public String getCategory_icon() {
		return category_icon;
	}

	public void setCategory_icon(String category_icon) {
		this.category_icon = category_icon;
	}

	public String getCategory_pic() {
		return category_pic;
	}

	public void setCategory_pic(String category_pic) {
		this.category_pic = category_pic;
	}
}
