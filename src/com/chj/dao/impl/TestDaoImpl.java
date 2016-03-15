package com.chj.dao.impl;

import java.util.Map;

import com.etc.jdbc.util.JDBCUtils;

public class TestDaoImpl {
	
	public Object get(){
		return JDBCUtils.queryForMap("select * ", null);
	}
	
	public static void main(String[] args) {
		
		java.util.List<Map<String, Object>> queryForList = JDBCUtils.queryForList("select * from t_user", null);
		
		for (Map<String, Object> map : queryForList) {
			System.out.println(map.get("id"));
			System.out.println(map.get("name"));
			System.out.println(map.get("password"));
		}
	}

}
