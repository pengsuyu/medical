package com.medical.login.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;

import com.medical.utils.HibernateSessionFactory;

public class UserAction {
	private Integer id;
	private String username;
	private String password;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
	    
		Session session=null;
		HttpServletRequest req =ServletActionContext.getRequest();
		HttpServletResponse resp = ServletActionContext.getResponse();
		System.out.println(getPassword());
		try{
			
			//获得hibernate的session进行数据处理
			session=HibernateSessionFactory.getSession();
			//注意Hql 和SQL 的区别，不要直接查表，而是类
			String hql="select password from User where name='"+username+"' "+"and password=md5('"+password+"')";
			Query query=session.createQuery(hql);
			String queryResult=(String)query.uniqueResult();
			System.out.println("result: "+ queryResult);
			String path="/result.jsp";
			if(password!=null)
			{
				if(queryResult!=null)
				{
					req.setAttribute("result", "success!");
					RequestDispatcher rd=req.getRequestDispatcher(path);
					rd.forward(req, resp);//转发
					//return;
				}else
				{
					req.setAttribute("result", "failure!");
					RequestDispatcher rd=req.getRequestDispatcher(path);
					rd.forward(req, resp);//转发
				}
			}
		}catch(Exception e)
		{
			e.printStackTrace();
			req.setAttribute("result", "failure!");
			String path="/result.jsp";
			RequestDispatcher rd=req.getRequestDispatcher(path);
			rd.forward(req, resp);//转发
		}finally
		{
			if(session!=null)
				session.close();
		}
		return "result";
	
	}
}
