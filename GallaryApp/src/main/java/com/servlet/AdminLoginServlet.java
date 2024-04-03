package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/loginform")
public class AdminLoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{	
		
	int  Randomnum=Integer.parseInt(req.getParameter("randomnum"));
		int Randomnum1=Integer.parseInt(req.getParameter("randomnum1"));
	
		if(Randomnum == Randomnum1)
		{
			String Loginas=req.getParameter("loginas");
			switch(Loginas)
			{
			case "admin":
                AdminBean ab1=new AminLoginDAO().loginAdmin(req);
				
				if(ab1 == null)
				{	
					req.setAttribute("status","expire");
					req.getRequestDispatcher("Login.jsp").forward(req, res);
					
				}
				else
				{
					HttpSession hs =req.getSession();
					hs.setAttribute("admin1",ab1);
					req.getRequestDispatcher("AdminPage.jsp").forward(req, res);
				}
				break;
				
			case "user":
				UserBean ub=new AminLoginDAO().loginUser(req);
				
				if(ub == null)
				{	
					req.setAttribute("status","expire");
					req.getRequestDispatcher("Login.jsp").forward(req, res);
					
				}
				else
				{
					HttpSession hs =req.getSession();
					hs.setAttribute("user1",ub);
					req.getRequestDispatcher("UserPage.jsp").forward(req, res);
				}
				
					break;
			}
			
		
	}
		else
		{
			req.setAttribute("status","random");	
			req.getRequestDispatcher("Login.jsp").forward(req, res);
			
		}
	
	
	}
	
	

}
