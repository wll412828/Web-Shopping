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
	        String password = request.getParameter("password");//��ȡ���ϵĲ���ֵ
	        String repassword = request.getParameter("repassword");
	        String userrealname = request.getParameter("userrealname");
	        String usersex = request.getParameter("useresx");
	        String useridcard = request.getParameter("useridcard");
	        String usermobile = request.getParameter("usermobile");

	        UserDao userDao = new UserDao();
	        if(username != null && !username.isEmpty()) {
	            //�û��������ڿ���ע��
	            if(userDao.isUserExist(username) && userDao.isPasswordConfirm(password, repassword)) {
	                UserBean userBean = new UserBean();
	                userBean.setUserPwd(password);
	                userBean.setUserName(username);
	                userBean.setUserRealName(userrealname);
	                userBean.setUserSex(usersex);
	                userBean.setUserIdcard(useridcard);
	                userBean.setUserMobile(usermobile);
	               
	                userDao.saveUser(userBean);
	                //request.setAttribute("result", "�ɹ�");
	                request.setAttribute("info", "Congratulations! Reg successfully!");
	                //request.getRequestDispatcher("index.jsp").forward(request, response);
	            }else {
	                if(!userDao.isUserExist(username))
	                    request.setAttribute("info", "�û����Ѵ���!ע��ʧ��");
	                	 //request.setAttribute("result", "ʧ��");
	                if(!userDao.isPasswordConfirm(password, repassword))
	                    request.setAttribute("info", "�������벻һ�£�ע��ʧ��");
	                	 //request.setAttribute("result", "ʧ��");
	            }
	        }
	        //forward to message.jsp
	        
	        request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	

}
