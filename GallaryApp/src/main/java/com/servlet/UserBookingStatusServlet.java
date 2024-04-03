package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.binclass.Ebooking;
import java.util.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/BookingStatus")
public class UserBookingStatusServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{	
	  HttpSession hs=req.getSession();
	  int userid= Integer.parseInt(req.getParameter("uid11"));
	  System.out.println(userid);
	  if(hs!=null)
	  {
		  Ebooking ebook=new Ebooking();
		  ebook.setUserid(userid);
		  ArrayList<Ebooking>all=new UserBookingDao().userbooking(ebook);
		  
		  if(all.size()>0)
		  {
			  hs.setAttribute("userbooking", all);
			 req.getRequestDispatcher("UserBookingStatus.jsp").forward(req, res); 
			 
		  }
		  else
		  {
			  System.out.println("something went wrong");
		  }
		  
	  
		
	  }
	}
}
