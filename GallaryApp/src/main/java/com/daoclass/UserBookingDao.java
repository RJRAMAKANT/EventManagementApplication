package com.daoclass;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.binclass.Ebooking;
import com.connection.DBConnection;
public class UserBookingDao {
//	public ArrayList<Ebooking>al;
//	public ArrayList<Ebooking>userbooking(Ebooking ebook)
//	{
//		try {
//			Connection con=DBConnection.getcon();
//			PreparedStatement  ps=con.prepareStatement("select * from eventbooking where userid=?");
//			ps.setInt(1,ebook.getUserid());
//			
//			ResultSet rs=ps.executeQuery();
//			while(rs.next())
//			{
//				Ebooking ebk=new Ebooking();
//				ebk.setBookid(rs.getInt(1));;
//				ebk.setCName(rs.getString(2));
//				ebk.setNumber(rs.getLong(3));
//				ebk.setANumber(rs.getLong(4));
//				ebk.setEdate(rs.getString(5));
//				ebk.setEtype(rs.getString(6));
//				ebk.setBudget(rs.getString(7));
//				ebk.setAddress(rs.getString(8));
//				ebk.setStatus(rs.getString(9));
//				ebk.setUserid(rs.getInt(10));
//				al.add(ebk);
//			}
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//		return al;
//	}
	 public ArrayList<Ebooking> userbooking(Ebooking ebook) {
	        ArrayList<Ebooking> al = new ArrayList<>(); // Initialize ArrayList
	        try {
	            Connection con = DBConnection.getcon();
	            PreparedStatement ps = con.prepareStatement("select * from eventbooking where userid=?");
	            ps.setInt(1, ebook.getUserid());

	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                Ebooking ebk = new Ebooking();
	                ebk.setBookid(rs.getInt(1));
	                ebk.setCName(rs.getString(2));
	                ebk.setNumber(rs.getLong(3));
	                ebk.setANumber(rs.getLong(4));
	                ebk.setEdate(rs.getString(5));
	                ebk.setEtype(rs.getString(6));
	                ebk.setBudget(rs.getString(7));
	                ebk.setAddress(rs.getString(8));
	                ebk.setStatus(rs.getString(9));
	                ebk.setUserid(rs.getInt(10));
	                al.add(ebk);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        System.out.println(al);
	        return al;
	    }

}
