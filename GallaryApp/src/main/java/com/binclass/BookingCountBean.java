package com.binclass;

public class BookingCountBean {
	private String etype;
	private String ecount;
	
	public BookingCountBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookingCountBean(String etype, String ecount) {
		super();
		this.etype = etype;
		this.ecount = ecount;
	}
	public String getEtype() {
		return etype;
	}
	public void setEtype(String etype) {
		this.etype = etype;
	}
	public String getEcount() {
		return ecount;
	}
	public void setEcount(String ecount) {
		this.ecount = ecount;
	}
	

}
