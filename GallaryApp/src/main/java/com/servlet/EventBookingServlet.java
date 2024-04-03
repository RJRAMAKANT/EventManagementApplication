package com.servlet;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.daoclass.EventBookingDao;
@WebServlet("/bookevent")
public class EventBookingServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{	
	  HttpSession hs=req.getSession();
	  if(hs!=null)
	  {
		  int k=new EventBookingDao().storebooking(req);
		  if(k>0)
		  {
			  req.getRequestDispatcher("BookingSuccess.jsp").forward(req, res);
		  }
		  else
		  {
			  System.out.println("Something went wrong ");
		  }
	  }
	  else
	  {
		  req.getRequestDispatcher("index.jsp").forward(req, res);
	  }
	}
}
