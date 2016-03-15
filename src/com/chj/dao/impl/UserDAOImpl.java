package com.chj.dao.impl;

import org.springframework.stereotype.Repository;

import com.chj.dao.UserDAO;
import com.chj.entity.User;
import com.chj.mapper.UserMapper;
import com.etc.jdbc.util.JDBCUtils;

@Repository
public class UserDAOImpl implements UserDAO {

	
	@Override
	public User get(String userId, String userPassword) {

		String sql = "";

		sql += " SELECT *                   ";
		sql += "   FROM t_user T            ";
		sql += "  WHERE T.user_id       = ? ";
		sql += "    AND T.user_password = ? ";
	
		return JDBCUtils.queryForObject(sql, new UserMapper(), userId, userPassword);
	}

	@Override
	public int add(User user) {
		
		String sql = "";
		return JDBCUtils.update(sql, "");
	}

}
