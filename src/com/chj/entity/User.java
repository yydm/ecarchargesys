package com.chj.entity;

import java.util.Date;

public class User {

	private String userPk;	     //user_pk	     varchar
	private String userId;       //user_id	     varchar
	private String userName;	 //user_name	 varchar
	private String userPassword; //user_password varchar
	private int    userType;	 //user_type	 int
	private int    userStatus;	 //user_status	 int
	private String userPhone;	 //user_phone	 varchar
	private String userEmail;	 //user_email	 varchar
	private Date   createDate;	 //create_date	 datetime
	private Date   modifyDate;	 //modify_date	 datetime
	private Date   deleteDate;	 //delete_date	 datetime
	private int    status;	     //status	     int
	
	public String getUserPk() {
		return userPk;
	}
	public void setUserPk(String userPk) {
		this.userPk = userPk;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	public int getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public Date getDeleteDate() {
		return deleteDate;
	}
	public void setDeleteDate(Date deleteDate) {
		this.deleteDate = deleteDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public User(String userPk, String userId, String userName,
			String userPassword, int userType, int userStatus,
			String userPhone, String userEmail, Date createDate,
			Date modifyDate, Date deleteDate, int status) {
		super();
		this.userPk = userPk;
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userType = userType;
		this.userStatus = userStatus;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.deleteDate = deleteDate;
		this.status = status;
	}
	
	
}
