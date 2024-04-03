package com.binclass;

public class Ebooking {
	private int bookid;
	private String CName;
	private Long Number;
	private Long ANumber;
	private String Edate;
	private String Etype;
	private String Budget;
	private String Address;
	private String Status;
	private int userid;
	
	
	
	public Ebooking() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Ebooking(int bookid, String cName, Long number, Long aNumber, String edate, String etype, String budget,
			String address, String status, int userid) {
		super();
		this.bookid = bookid;
		CName = cName;
		Number = number;
		ANumber = aNumber;
		Edate = edate;
		Etype = etype;
		Budget = budget;
		Address = address;
		Status = status;
		this.userid = userid;
	}



	public int getBookid() {
		return bookid;
	}



	public void setBookid(int bookid) {
		this.bookid = bookid;
	}



	public String getCName() {
		return CName;
	}



	public void setCName(String cName) {
		CName = cName;
	}



	public Long getNumber() {
		return Number;
	}



	public void setNumber(Long number) {
		Number = number;
	}



	public Long getANumber() {
		return ANumber;
	}



	public void setANumber(Long aNumber) {
		ANumber = aNumber;
	}



	public String getEdate() {
		return Edate;
	}



	public void setEdate(String edate) {
		Edate = edate;
	}



	public String getEtype() {
		return Etype;
	}



	public void setEtype(String etype) {
		Etype = etype;
	}



	public String getBudget() {
		return Budget;
	}



	public void setBudget(String budget) {
		Budget = budget;
	}



	public String getAddress() {
		return Address;
	}



	public void setAddress(String address) {
		Address = address;
	}



	public String getStatus() {
		return Status;
	}



	public void setStatus(String status) {
		Status = status;
	}



	public int getUserid() {
		return userid;
	}



	public void setUserid(int userid) {
		this.userid = userid;
	}


}
