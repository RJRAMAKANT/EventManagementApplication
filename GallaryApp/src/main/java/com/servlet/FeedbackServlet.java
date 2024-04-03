package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daoclass.FeedBackDao;

@WebServlet("/feedbackform")
public class FeedbackServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{	
	  HttpSession hs=req.getSession();
	
	  if(hs!=null)
	  {
		  int k=new FeedBackDao().userFeedback(req);
		  if(k>0)
		  {
			  System.out.println("Feedback stored Successfully");
			  req.setAttribute("Message","Stored");
			  req.getRequestDispatcher("FeedBack.jsp").forward(req, res);
		  }
		  else
		  {
			  System.out.println("Something Went Wrong");
		  }
	  }
	  else
	  {
		  req.getRequestDispatcher("index.jsp").forward(req, res);
		  
	  }
	  
	  }

}
