package com.chj.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.chj.entity.User;
import com.etc.jdbc.mapper.RowMapper;

public class UserMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs) throws SQLException {

		User user = new User();

		user.setId(rs.getInt("id"));
		user.setName("name");
		user.setPassword("password");

		return user;
	}

}
