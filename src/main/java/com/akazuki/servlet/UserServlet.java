package com.akazuki.servlet;

import com.akazuki.model.Users;
import com.akazuki.service.UsersService;

public class UserServlet {
	UsersService us = new UsersService();
	public Users getUserById(int id){
		Users user = us.getUserById(id);
		System.out.println(user.toString());
		return user;
	}
	public static void main(String []args){
		System.out.println("1");
		UsersService us = new UsersService();
		System.out.println("2");
		System.out.println(us.getUserById(9));
		System.out.println("3");

	}
}
