package com.daoclass;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.binclass.Ebooking;
import com.connection.DBConnection;
public class EventBookingDao {

int k=0;
	public int storebooking(HttpServletRequest req)
	{
		try
		{
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("insert into eventbooking values(ebooking1.nextval,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,req.getParameter("fullname"));
			System.out.println(req.getParameter("fullname"));
			ps.setLong(2,Long.parseLong(req.getParameter("mobile")));
			System.out.println(Long.parseLong(req.getParameter("mobile")));
			ps.setLong(3,Long.parseLong(req.getParameter("alternumber")));
			System.out.println(Long.parseLong(req.getParameter("alternumber")));
			ps.setString(4,req.getParameter("bdate"));
			System.out.println(req.getParameter("bdate"));
			ps.setString(5, req.getParameter("eventtype"));
			System.out.println(req.getParameter("eventtype"));
			ps.setString(6, req.getParameter("budget"));
			System.out.println(req.getParameter("budget"));
			ps.setString(7,req.getParameter("eaddress"));
			System.out.println(req.getParameter("eaddress").trim());
			ps.setString(8, req.getParameter("status1"));
			System.out.println(req.getParameter("status1"));
			ps.setInt(9,Integer.parseInt(req.getParameter("customer1")));
			System.out.println(Integer.parseInt(req.getParameter("customer1")));
			 k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		 return k;
	}
	
	
}
