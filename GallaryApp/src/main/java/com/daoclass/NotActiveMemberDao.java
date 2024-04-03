package com.daoclass;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import com.connection.DBConnection;

public class NotActiveMemberDao {
	int k;
	public int updatemember(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			String act=req.getParameter("aprovestatus1");
			if(act.equals("NOT ACTIVE"))
			{
				PreparedStatement ps=con.prepareStatement("DELETE FROM team WHERE userid = ?");
				ps.setInt(1,Integer.parseInt(req.getParameter("teamuserid")));
				
				k=ps.executeUpdate();
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
