package com.daoclass;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import com.binclass.*;
import com.connection.DBConnection;
public class AddnewTeamDao {
	int k;
	public int addmember(HttpServletRequest req) {
		
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("insert into team values(teamid.nextval,?,?,?,?,?,?,?)");
			ps.setString(1,req.getParameter("fullname"));
			ps.setString(2,req.getParameter("mobile"));
			ps.setString(3,req.getParameter("mailid"));
			ps.setString(4,req.getParameter("position"));
			ps.setString(5,req.getParameter("eaddress"));
			ps.setString(6,req.getParameter("status1"));
			ps.setString(7,req.getParameter("joindate"));
			k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
