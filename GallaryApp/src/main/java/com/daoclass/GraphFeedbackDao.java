package com.daoclass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.binclass.BookingCountBean;
import com.connection.DBConnection;

public class GraphFeedbackDao {
public ArrayList<BookingCountBean>bookcount=new ArrayList<>();
	
	public ArrayList<BookingCountBean>booking1()
	{
		try {
			Connection con = DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select satisfy,count(*) from feedbackform GROUP BY satisfy");
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

}
