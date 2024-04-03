package com.daoclass;
import com.binclass.*;
import com.connection.DBConnection;

import java.util.*;
import java.sql.*;

public class TeamDao {
public ArrayList<TeamBean>al=new ArrayList<>();
public ArrayList<TeamBean>totalteam()
{
	try {
		Connection con=DBConnection.getcon();
		PreparedStatement ps=con.prepareStatement("select*from Team");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			TeamBean tb=new TeamBean();
			tb.setUserid(rs.getInt(1));
			tb.setUsername(rs.getString(2));
			tb.setMobile(rs.getString(3));
			tb.setEmail(rs.getString(4));
			tb.setPosition(rs.getString(5));
			tb.setAddress(rs.getString(6));
			tb.setActive(rs.getString(7));
			tb.setJoindate(rs.getString(8));
			al.add(tb);
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return al;
}
}
