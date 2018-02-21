package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;
import UserDao.UserInfo;

public class UserServlet extends HttpServlet{
	public void service(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		UserDao dao = new UserDao();
		PrintWriter out = response.getWriter();
		try {
			UserInfo user = dao.finduser("JACK");
			request.setAttribute("user", user);
			request.getRequestDispatcher("/UserPage/userpage.jsp").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/UserPage/userpage.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			out.println("系统繁忙，请稍后再试");
		}
	}

}
