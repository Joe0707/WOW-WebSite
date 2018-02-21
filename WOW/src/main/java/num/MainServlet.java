package num;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class MainServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// ��ȡ����·��
				String path = req.getServletPath();
				if("/login.do".equals(path)){
					login(req,res);
				}else if("/createImg.do".equals(path)){
					createImg(req,res);
				}else{
					throw new RuntimeException("û�����ҳ��");
				}
				
				
	}
	
	//������֤��
		private void createImg(HttpServletRequest req, HttpServletResponse res) throws IOException {
			 //������֤���Լ�ͼƬ
			Object[]objs=ImageUtil.createImage();
			//����֤�����session
			HttpSession session=req.getSession();
			session.setAttribute("imagecode", objs[0]);
			
			//��ͼƬ���͸������
			res.setContentType("image/png");
			//��ȡ�ֽ������,�����ɷ���������,��Ŀ����ǵ�ǰ���ʵ��Ǹ������
			OutputStream os=res.getOutputStream();
			BufferedImage img=(BufferedImage) objs[1];
			ImageIO.write(img, "png", os);
			os.close();
		}
	private void login(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String code=req.getParameter("imgcode");
		//�����֤��
		HttpSession session=req.getSession();
		String imgcode=(String)session.getAttribute("imagecode");
		
		if(code==null || !code.equalsIgnoreCase(imgcode)){
			req.setAttribute("error", "��֤�����");
			req.getRequestDispatcher("login.jsp").forward(req, res);
			return;
		}
	}
	
}
