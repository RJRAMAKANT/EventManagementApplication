package com.daoclass;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

import com.connection.DBConnection;
import java.util.*;
import com.binclass.*;
import java.sql.*;
public class AllFeedBack {
	public ArrayList<FeedBack>al=new ArrayList<>();
	public ArrayList<FeedBack> allFeedback1()
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select * from feedbackform");
			 ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				FeedBack fed=new FeedBack();
				fed.setUserID(rs.getInt(1));
				fed.setUsername(rs.getString(2));
				fed.setEmail(rs.getString(3));
				fed.setMobile(rs.getString(4));
				fed.setSatisfy(rs.getString(5));
				fed.setMessage(rs.getString(6));
				al.add(fed);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
}
