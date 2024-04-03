package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daoclass.UpdateStatusDao;
@WebServlet("/statusupdate")
public class UpdateStatusServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{	
	  HttpSession hs=req.getSession();
	  if(hs!=null)
	  {
		  int k=new UpdateStatusDao().updatestatus(req);
		  if(k>0)
		  {
			  System.out.println("CHANGED");
			  req.getRequestDispatcher("AllBooking.jsp").forward(req, res);
		  }
		  else
		  {
			  System.out.println("Something went Wrong");
		  }
	  }
	  else
	  {
		  req.getRequestDispatcher("index.jsp").forward(req, res);
	  }
	  
	  
	  }

}
