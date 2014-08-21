package com.wy.tool;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Fiter  implements Filter{

	public void destroy() {  

	  // TODO Auto-generated method stub  

	 }  

	 public void doFilter(ServletRequest arg0, ServletResponse arg1, 

	   FilterChain arg2) throws IOException, ServletException { 

	  // TODO Auto-generated method stub 

	HttpServletRequest req = (HttpServletRequest) arg0; 

	HttpServletResponse res = (HttpServletResponse) arg1; 

	  req.setCharacterEncoding("utf-8"); 

	  res.setCharacterEncoding("gb2312"); 

	  arg2.doFilter(req, res); 

	 }  

	 public void init(FilterConfig arg0) throws ServletException { 

	  // TODO Auto-generated method stub   
	 } 
}


