package com.medical.login.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;

import com.medical.utils.HibernateSessionFactory;

public class UserLoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req,resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType( "text/xml;charset=UTF-8" );//设置响应格式为test/xml
		
		//禁止缓存
		//禁止缓存
		resp.addHeader( "Cache-Control", "no-store,no-cache,must-revalidate" );
		resp.addHeader( "Cache-Control", "post-check=0,pre-check=0" );
		resp.addHeader( "Expires", "0" );
		resp.addHeader( "Pragma", "no-cache" );
				
		Session session=null;
		PrintWriter out = resp.getWriter();
		String name=(String)req.getParameter("username");
		String password=(String)req.getParameter("password");
		//xml必须要声明的
		out.println( "<?xml version=\"1.0\" encoding=\"utf-8\"?>" );
		//checklogin标签
		out.println( "<checkLogin>" );
		try{
			
			//获得hibernate的session进行数据处理
			session=HibernateSessionFactory.getSession();
			String hql="select password from User where name='"+name+"' "+"and password=md5('"+password+"')";
			Query query=session.createQuery(hql);
			String queryResult=(String)query.uniqueResult();
			if(password!=null)
			{
				if(queryResult!=null)
				{
					out.println("<hasUser id=\"ok\"/>");
					resp.sendRedirect("/about.jsp");
					//return;
				}else
				{
					out.println("<noUser>"+name+"</noUser>");
				}
			}
			else {
				out.println("<noUser>"+name+"</noUser>");
			}
		}catch(Exception e)
		{
			e.printStackTrace();
			out.println("<noUser>"+name+"</noUser>");
		}finally
		{
			out.println( "</checkLogin>" );
			out.close();
			if(session!=null)
				session.close();
		}
		
		return ;
	}
	
}
