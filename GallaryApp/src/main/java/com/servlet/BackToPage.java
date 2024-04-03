package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/backtohome")
public class BackToPage extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{	
	  HttpSession hs=req.getSession();
	  if(hs!=null)
	  {
		  req.getRequestDispatcher("UserPage.jsp").forward(req, res);
	  
	  }
	  else
	  {
		  req.getRequestDispatcher("Index.jsp").forward(req, res);  
		  req.setAttribute("message","sessionout");
	  }
	}

}
