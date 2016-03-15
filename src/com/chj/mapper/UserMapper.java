package com.chj.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.chj.entity.User;
import com.etc.jdbc.mapper.RowMapper;

public class UserMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs) throws SQLException {

		User user = new User();

		user.setUserPk(rs.getString("user_pk"));             //user_pk	     varchar 
		user.setUserId(rs.getString("user_id"));             //user_id	     varchar 
		user.setUserName(rs.getString("user_name"));         //user_name	 varchar 
		user.setUserPassword(rs.getString("user_password")); //user_password varchar 
		user.setUserType(rs.getInt("user_type"));		     //user_type	 int     
		user.setUserStatus(rs.getInt("user_status"));        //user_status	 int     
		user.setUserPhone(rs.getString("user_phone"));       //user_phone	 varchar 
		user.setUserEmail(rs.getString("user_email"));       //user_email	 varchar 
		user.setCreateDate(rs.getDate("create_date"));       //create_date	 datetime
		user.setModifyDate(rs.getDate("modify_date"));       //modify_date	 datetime
		user.setDeleteDate(rs.getDate("delete_date"));       //delete_date	 datetime
		user.setStatus(rs.getInt("status"));                 //status	     int     

		return user;
	}

}
