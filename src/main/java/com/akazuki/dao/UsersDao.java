package com.akazuki.dao;

import com.akazuki.C3P0Utils;
import com.akazuki.model.Users;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class UsersDao {
	public Users getUserById(int id) throws SQLException {
		QueryRunner r = C3P0Utils.getQueryRunner();
		String sql = "select * from users where user_id=?";
		return r.query(sql,new BeanHandler<>(Users.class), id);
	}
}
