package com.daoclass;
import java.sql.*;
import java.util.*;
import com.binclass.*;
import com.connection.DBConnection;

public class BookingCount {
	public ArrayList<BookingCountBean>bookcount=new ArrayList<>();
	public ArrayList<BookingCountBean>bookcount1=new ArrayList<>();
	public ArrayList<BookingCountBean>bookcount4=new ArrayList<>();
	
	public ArrayList<BookingCountBean>booking()
	{
		try {
			Connection con = DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("SELECT etype, COUNT(*) FROM eventbooking GROUP BY etype");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				BookingCountBean bcb=new BookingCountBean();
				bcb.setEtype(rs.getString(1));
				bcb.setEcount(rs.getString(2));
				bookcount.add(bcb);
				
			}
			
		}
		catch(Exception e)
		{
			
		}
		return bookcount;
	}
	
	
	public ArrayList<BookingCountBean>booking2()
	{
		try {
			Connection con = DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select status,count(*) from eventbooking GROUP BY status");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				BookingCountBean bcb1=new BookingCountBean();
				bcb1.setEtype(rs.getString(1));
				bcb1.setEcount(rs.getString(2));
				bookcount1.add(bcb1);
				
			}
			
		}
		catch(Exception e)
		{
			
		}
		return bookcount1;
	}
	
	public ArrayList<BookingCountBean>booking4()
	{
		try {
			Connection con = DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select position,count(*) from team GROUP BY Position");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				BookingCountBean bcb1=new BookingCountBean();
				bcb1.setEtype(rs.getString(1));
				bcb1.setEcount(rs.getString(2));
				bookcount4.add(bcb1);
				
			}
			
		}
		catch(Exception e)
		{
			
		}
		return bookcount4;
	}
	
	
	
	

}
