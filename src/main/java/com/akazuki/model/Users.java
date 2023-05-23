package com.akazuki.model;

public class Users {
	private int user_id;
	private String username;
	private String password;
	private String nickname;
	private String user_img;
	private String user_regtime;

	public Users() {
	}

	public Users(int user_id, String username, String password, String nickname, String user_img, String user_regtime) {
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.user_img = user_img;
		this.user_regtime = user_regtime;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

	public String getUser_regtime() {
		return user_regtime;
	}

	public void setUser_regtime(String user_regtime) {
		this.user_regtime = user_regtime;
	}
}
