package back.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import back.dao.XwenDao;
import back.entity.Xwen;


public class ActionServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String action = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		if ("/news".equals(action)) {
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
				request.getRequestDispatcher("news.jsp").forward(request, response);
			}else{
				System.out.println("没有数据");
				request.setAttribute("erorr", "对不起,没有相关内容!");
				request.getRequestDispatcher("news.jsp").forward(request, response);
			}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if("/new".equals(action)){
			int param =Integer.parseInt(request.getParameter("param")) ;
			XwenDao dao = new XwenDao();
			Xwen title;
			try {
				title = dao.findTitle(param);
			
			request.setAttribute("t", title);
			request.getRequestDispatcher("new.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
