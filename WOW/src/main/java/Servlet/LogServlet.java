package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;

public class LogServlet extends HttpServlet{
	public void service(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		UserDao dao = new UserDao();
		PrintWriter out = response.getWriter();
		boolean check=false;
		try {
			check = dao.checklog(account, password);
		} catch (Exception e) {
			e.printStackTrace();
			out.println("服务器繁忙，请稍后再试");
		}
		/*PrintWriter out = response.getWriter();
		try {
			if(dao.checklog(account, password)){
				response.sendRedirect("/WOW/MainPage/MainPage.html");
			}else{
				out.println("登录失败");
			};
		} catch (Exception e) {
			e.printStackTrace();
			out.println("系统繁忙，请稍后再试");
		}*/
		request.setAttribute("check", check);
		RequestDispatcher rd = request.getRequestDispatcher("/MainPage/MainPage.jsp");
		rd.forward(request, response);
	}

}
