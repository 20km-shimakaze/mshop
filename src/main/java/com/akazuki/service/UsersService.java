package com.akazuki.service;

import com.akazuki.dao.UsersDao;
import com.akazuki.model.Users;

import java.sql.SQLException;

public class UsersService {
	private UsersDao uDao = new UsersDao();
	public Users getUserById(int id){
		Users users = null;
		try {
			users = uDao.getUserById(id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return users;
	}
}
