package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings({ "serial", "unused" })
@WebServlet("/signupform")
public class SignUpServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
	    String first=req.getParameter("randomnum1");
	    String second=req.getParameter("randomnum2");
	    if(first.equals(second))
	    {
	    	int k=new UserSignUpDAO().insertUser(req);
	    	if(k>0)
	    	{
	    		req.setAttribute("status","insert");
	    		req.getRequestDispatcher("Login.jsp").forward(req, res);
	    	}
	    	
	    	
	    }
	    else
	    {
	    	req.setAttribute("status","captcha");
	    	req.getRequestDispatcher("UserSignUp.jsp").forward(req, res);
	    }
	}

}
