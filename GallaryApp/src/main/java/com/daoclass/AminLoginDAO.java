package com.daoclass;
import java.sql.*;
import com.binclass.*;
import javax.servlet.http.*;
import com.connection.*;
public class AminLoginDAO {
	public AdminBean ab=null;
	public UserBean ub=null;
	public AdminBean loginAdmin(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("SELECT*FROM PHOTOADMIN WHERE EMAIL=? AND PASSWORD=?");
			ps.setString(1, req.getParameter("email"));
			ps.setString(2,req.getParameter("password"));
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ab=new AdminBean();
				ab.setAid(rs.getInt(1));
				ab.setFname(rs.getString(2));
				ab.setLname(rs.getString(3));
				ab.setEmail(rs.getString(4));
				ab.setPhone(rs.getLong(5));
				ab.setPassword(rs.getString(6));
				ab.setCity(rs.getString(7));
				ab.setDist(rs.getString(8));
				ab.setPin(rs.getLong(9));
				ab.setState(rs.getString(10));
				ab.setGender(rs.getString(11));
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ab;
		
	}
	
	
	public UserBean loginUser(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("SELECT*FROM galleryuser WHERE EMAIL=? AND PASSWORD=?");
			ps.setString(1, req.getParameter("email"));
			ps.setString(2,req.getParameter("password"));
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ub=new UserBean();
				ub.setUid(rs.getInt(1));
				ub.setFname(rs.getString(2));
				ub.setLname(rs.getString(3));
				ub.setEmail(rs.getString(4));
				ub.setPassword(rs.getString(5));
				ub.setPhone(rs.getLong(6));
				ub.setGender(rs.getString(7));
			
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ub;
		
	}
	
	

}
