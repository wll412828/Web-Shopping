package com.npe.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.npe.shop.bean.UserBean;
import com.npe.shop.dao.UserDao;

public class SignInServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SignInServlet() {
		super();
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		  String username = request.getParameter("username");
	        String password = request.getParameter("password");//获取表单上的参数值
	        String repassword = request.getParameter("repassword");
	        String userrealname = request.getParameter("userrealname");
	        String usersex = request.getParameter("useresx");
	        String useridcard = request.getParameter("useridcard");
	        String usermobile = request.getParameter("usermobile");

	        UserDao userDao = new UserDao();
	        if(username != null && !username.isEmpty()) {
	            //用户名不存在可以注册
	            if(userDao.isUserExist(username) && userDao.isPasswordConfirm(password, repassword)) {
	                UserBean userBean = new UserBean();
	                userBean.setUserPwd(password);
	                userBean.setUserName(username);
	                userBean.setUserRealName(userrealname);
	                userBean.setUserSex(usersex);
	                userBean.setUserIdcard(useridcard);
	                userBean.setUserMobile(usermobile);
	               
	                userDao.saveUser(userBean);
	                //request.setAttribute("result", "成功");
	                request.setAttribute("info", "Congratulations! Reg successfully!");
	                //request.getRequestDispatcher("index.jsp").forward(request, response);
	            }else {
	                if(!userDao.isUserExist(username))
	                    request.setAttribute("info", "用户名已存在!注册失败");
	                	 //request.setAttribute("result", "失败");
	                if(!userDao.isPasswordConfirm(password, repassword))
	                    request.setAttribute("info", "两次密码不一致！注册失败");
	                	 //request.setAttribute("result", "失败");
	            }
	        }
	        //forward to message.jsp
	        
	        request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	

}
