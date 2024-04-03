package com.binclass;

public class TeamBean {
private int userid;
private String username;
private String mobile;
private String email;
private String position;
private String Address;
private String Active;
private String joindate;
public TeamBean() {
	super();
	// TODO Auto-generated constructor stub
}
public TeamBean(int userid, String username, String mobile, String email, String position, String address,
		String active, String joindate) {
	super();
	this.userid = userid;
	this.username = username;
	this.mobile = mobile;
	this.email = email;
	this.position = position;
	Address = address;
	Active = active;
	this.joindate = joindate;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPosition() {
	return position;
}
public void setPosition(String position) {
	this.position = position;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getActive() {
	return Active;
}
public void setActive(String active) {
	Active = active;
}
public String getJoindate() {
	return joindate;
}
public void setJoindate(String joindate) {
	this.joindate = joindate;
}


	
}
