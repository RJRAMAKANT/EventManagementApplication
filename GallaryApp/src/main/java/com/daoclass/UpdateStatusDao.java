package com.daoclass;

import javax.servlet.http.HttpServletRequest;

import com.connection.DBConnection;

import java.sql.*;
public class UpdateStatusDao {
	int k;
	public int updatestatus(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps = con.prepareStatement("UPDATE eventbooking SET status = ? WHERE eid = ?");
            ps.setString(1,req.getParameter("aprovestatus"));
            System.out.println(req.getParameter("aprovestatus")+" first data");
            ps.setInt(2,Integer.parseInt(req.getParameter("bookingid")));
            System.out.println(Integer.parseInt(req.getParameter("bookingid")));
			
            k=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
