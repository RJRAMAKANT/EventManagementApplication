package com.binclass;

public class FeedBack {
	private int UserID;
	private String Username;
	private String Email;
	private String mobile;
	private String Satisfy;
	private String Message;
	public FeedBack(int userID, String username, String email, String mobile, String satisfy, String message) {
		super();
		UserID = userID;
		Username = username;
		Email = email;
		this.mobile = mobile;
		Satisfy = satisfy;
		Message = message;
	}
	public FeedBack() {
		// TODO Auto-generated constructor stub
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getSatisfy() {
		return Satisfy;
	}
	public void setSatisfy(String satisfy) {
		Satisfy = satisfy;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	
	
	

}
