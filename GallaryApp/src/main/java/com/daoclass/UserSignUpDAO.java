package com.daoclass;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;

import com.connection.DBConnection;

public class UserSignUpDAO {
	public int k=0;
    public int insertUser(HttpServletRequest req)
    {
    	try {
    		Connection con=DBConnection.getcon();
    		PreparedStatement ps=con.prepareStatement("insert into GALLERYUSER values(PhotoUser1.nextval,?,?,?,?,?,?)");
    		ps.setString(1, req.getParameter("fname"));
    		ps.setString(2, req.getParameter("lname"));
    		ps.setString(3, req.getParameter("email"));
    		ps.setString(4, req.getParameter("password"));
    		ps.setLong(5, Long.parseLong(req.getParameter("phone")));
    		ps.setString(6, req.getParameter("signupas"));
    		
    		k=ps.executeUpdate();
    		
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return k;
    	
    }

}
