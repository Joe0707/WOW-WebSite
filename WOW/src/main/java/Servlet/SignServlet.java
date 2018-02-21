package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;

public class SignServlet extends HttpServlet{
	public void service(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String account = request.getParameter("account");
		System.out.println(account);
		UserDao dao = new UserDao();
		PrintWriter out = response.getWriter();
		try {
			int gold = dao.sign(account);
			if(gold!=-1){
				request.setAttribute("signgold", gold);
				RequestDispatcher rd = request.getRequestDispatcher("/user");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.println("系统繁忙，请稍后再试");
		}
	}
}
