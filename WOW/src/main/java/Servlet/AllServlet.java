package Servlet;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UserDao.UserDao;
import UserDao.UserInfo;
import back.dao.XwenDao;
import back.entity.Xwen;
import num.ImageUtil;

public class AllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String uri = request.getRequestURI();
		String action = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		PrintWriter out = null;
		if(!("/createImg".equals(action))){
		out = response.getWriter();
		}
		HttpSession session = request.getSession();
		if("/login".equals(action)){
			String account = request.getParameter("account");
			String password = request.getParameter("password");
			UserDao dao = new UserDao();
			UserInfo user = null;
			boolean check=false;
			try {
				check = dao.checklog(account, password);
				if(check==true){
					user=dao.finduser(account);
					session.setAttribute("user", user);
				}
			} catch (Exception e) {
				e.printStackTrace();
				out.println("服务器繁忙，请稍后再试");
			}
			session.setAttribute("checklogin",check);
			request.setAttribute("check", check);
			RequestDispatcher rd = request.getRequestDispatcher("/main.do");
			rd.forward(request, response);
		}else if("/logout".equals(action)){
			session.invalidate();
			RequestDispatcher rd = request.getRequestDispatcher("/main.do");
			rd.forward(request, response);
		}else if("/sign".equals(action)){
			String account = request.getParameter("account");
			UserDao dao = new UserDao();
			try {
				boolean bo = dao.checksign(account);
				System.out.println(bo);
				if(bo==true){
				int gold = dao.sign(account);
				request.setAttribute("signfailed","签到成功");
				if(gold!=-1){
					request.setAttribute("signgold", gold);
					RequestDispatcher rd = request.getRequestDispatcher("/user.do");
					rd.forward(request, response);
				}
				}else{
					request.setAttribute("signgold", 0);
					request.setAttribute("signfailed", "今天已经签到过了");
					RequestDispatcher rd = request.getRequestDispatcher("/user.do");
					rd.forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
				out.println("系统繁忙，请稍后再试");
			}
		}else if("/user".equals(action)){
			UserDao dao = new UserDao();
			try {
				UserInfo user = (UserInfo) session.getAttribute("user");
				user = dao.finduser(user.getAccount());
				session.setAttribute("user", user);
				dao.checkgamedate(user.getAccount());
				int count = dao.checkgamecount(user.getAccount());
				request.setAttribute("gamecount", count);
				request.getRequestDispatcher("/WEB-INF/userpage.jsp").forward(request, response);
				//response.sendRedirect(request.getContextPath()+"/UserPage/userpage.jsp");
			} catch (Exception e) {
				e.printStackTrace();
				out.println("系统繁忙，请稍后再试");
			}
		}else if("/modify".equals(action)){
			String account = request.getParameter("account");
			String nickname = request.getParameter("nickname");
			String gender = request.getParameter("gender");
			String location = request.getParameter("loc");
			String city = request.getParameter("city");
			UserInfo user = new UserInfo();
			user.setAccount(account);
			user.setNickname(nickname);
			user.setGender(gender);
			user.setLocation(location);
			user.setCity(city);
			UserDao dao = new UserDao();
			try {
				if(dao.modify(user)){
					response.sendRedirect("/WOW/user.do");
				}else{
					out.println("修改失败");
				}
			} catch (Exception e) {
				e.printStackTrace();
				out.println("系统繁忙，请稍后再试");
			}
		}else if("/record".equals(action)){
			int gold = Integer.parseInt(request.getParameter("gold").toString());
			UserInfo user = (UserInfo) session.getAttribute("user");
			String account = user.getAccount();
			UserDao dao = new UserDao();
			try {
				boolean bo =dao.goldrecord(gold, account);
				if(bo==true){
					dao.checkgame(account);
					response.sendRedirect("/WOW/user.do");
				}
			} catch (Exception e) {
				e.printStackTrace();
				out.println("系统繁忙，请稍后重试");
			}
		}else if("/load".equals(action)){
			String account = request.getParameter("account");
			System.out.println(account);
			int gold = Integer.parseInt(request.getParameter("gold").toString());
			System.out.println(gold);
			UserDao dao = new UserDao();
			try {
				boolean bo = dao.reduce(account, gold);
				System.out.println(bo);
				request.setAttribute("reduce", bo);
				request.getRequestDispatcher("/download.do").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				out.println("系统繁忙，请稍后重试");
			}
			
		}
		else if("/main".equals(action)){
			request.getRequestDispatcher("/WEB-INF/MainPage.jsp").forward(request, response);
		}else if("/download".equals(action)){
			request.getRequestDispatcher("/WEB-INF/xiazai.jsp").forward(request, response);
		}else if("/news".equals(action)){
			request.getRequestDispatcher("/WEB-INF/news.jsp").forward(request, response);
		}else if("/picture".equals(action)){
			request.getRequestDispatcher("/WEB-INF/picture.jsp").forward(request, response);
		}else if("/text".equals(action)){
				int param =Integer.parseInt(request.getParameter("param")) ;
				XwenDao dao = new XwenDao();
				Xwen title;
				try {
					title = dao.findTitle(param);
					request.setAttribute("t", title);
					request.getRequestDispatcher("/WEB-INF/new.jsp").forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
		}else if("/search".equals(action)){
			String search = request.getParameter("search");
			XwenDao dao = new XwenDao();
			System.out.println(11);
			List<Xwen> xw;
			try {
				xw = dao.findAll(search);
			if (xw.size()!=0) {
				System.out.println("有数据");
				System.out.println(xw);
				request.setAttribute("xw", xw);
				request.getRequestDispatcher("/WEB-INF/text.jsp").forward(request, response);
			}else{
				System.out.println("没有数据");
				request.setAttribute("xw", null);
				request.getRequestDispatcher("/WEB-INF/text.jsp").forward(request, response);
			}
			}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}else if("/video".equals(action)){
		request.getRequestDispatcher("/WEB-INF/game.jsp").forward(request, response);
	}else if("/pagelogin".equals(action)){
		UserDao dao = new UserDao();
		try {
			List<String> list = dao.findallaccount();
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
			out.println("系统繁忙，请稍后再试");
		}
		request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}else if("/createImg".equals(action)){
		System.out.println("111");
		createImg(request,response);
	}else if("/add".equals(action)){
		String imgcode = request.getParameter("imgcode");
		String rightcode = session.getAttribute("imagecode").toString();
		if(!(imgcode.equals(rightcode))){
			request.setAttribute("wrongcode", "验证码错误");
			request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
			return;
		}else{
			UserDao dao = new UserDao();
			String account = request.getParameter("account");
			String password =request.getParameter("password");
			String nickname = request.getParameter("nickname");
			String gender = request.getParameter("gender");
			int age = Integer.parseInt(request.getParameter("age"));
			String location = request.getParameter("location");
			String city = request.getParameter("city");
			UserInfo user = new UserInfo();
			user.setAccount(account);
			user.setAge(age);
			user.setCity(city);
			user.setGender(gender);
			user.setLocation(location);
			user.setNickname(nickname);
			user.setPassword(password);
			try {
				dao.add(user);
				request.setAttribute("reg", "注册成功，3秒后跳转到首页");
				request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);;
			} catch (Exception e) {
				e.printStackTrace();
				out.println("系统繁忙，请稍后再试");
			}
		}
	}

}
	public void createImg(HttpServletRequest req, HttpServletResponse res) throws IOException {
		Object[]objs=ImageUtil.createImage();
		System.out.println(objs[0]);
		System.out.println(objs[1]);
		HttpSession session=req.getSession();
		session.setAttribute("imagecode", objs[0]);
		res.setContentType("image/jpeg");
		OutputStream os=res.getOutputStream();
		BufferedImage img=(BufferedImage) objs[1];
		javax.imageio.ImageIO.write(img, "jpeg", os);
		os.close();
	}
}