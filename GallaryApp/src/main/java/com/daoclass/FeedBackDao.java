package com.daoclass;

import javax.servlet.http.HttpServletRequest;

import com.connection.DBConnection;
import java.sql.*;

public class FeedBackDao {

	int k;
	public int userFeedback(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("insert into Feedbackform values(?,?,?,?,?,?)");
			ps.setInt(1,Integer.parseInt(req.getParameter("userid")));
			ps.setString(2,req.getParameter("username"));
			ps.setString(3,req.getParameter("useremail"));
			ps.setString(4,req.getParameter("userphone"));
			ps.setString(5,req.getParameter("satisfy"));
			ps.setString(6, req.getParameter("msg"));
			k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}
}
