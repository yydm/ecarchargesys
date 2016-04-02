package com.chj.dao.impl;

import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.chj.constants.Constants;
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
	public boolean checkUserIdExist(String userId) {

		String sql = "";

		sql += " select count(1)      ";
		sql += "   from t_user T      ";
		sql += "  where T.user_id = ? ";
		
		Map<String, Object> queryForMap = JDBCUtils.queryForMap(sql, userId);
		Long size = (Long) queryForMap.get("count(1)");

		if (size.intValue() > 0) {

			return true;
		} else {
			
			return false;
		}
	}

	@Override
	public boolean addUser(User user) {
		
		String sql = "";
		
		sql += " INSERT                                                                                                                                     ";
		sql += "   INTO t_user                                                                                                                              ";
		sql += " (user_pk, user_id, user_name, user_password, user_type, user_status, user_phone, user_email, create_date, modify_date, delete_date, status)";
		sql += " VALUES                                                                                                                                     ";
		sql += " (?      ,?      , ?        , ?            , ?        , ?          , ?         , ?         , ?          , ?          , ?          , ?     )";
		
		int i = JDBCUtils.update(sql
						       , user.getUserPk()
							   , user.getUserId()
							   , user.getUserName()
							   , user.getUserPassword()
							   , user.getUserType()
							   , user.getUserStatus()
							   , user.getUserPhone()
							   , user.getUserEmail()
							   , new Date()
							   , Constants.NULL_DATE
							   , Constants.NULL_DATE
							   , Constants.ROW_STATUS_EFFECTIVE);
		
		if (i > 0) {
			return true;
		} else {
			return false;
		}
	}
}
