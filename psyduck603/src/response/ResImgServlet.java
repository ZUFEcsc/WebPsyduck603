package response;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ResImgServlet
 */
@WebServlet("/ResImgServlet")
public class ResImgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.setContentType("img/jpg");
		
		String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
		
		String scode = "";
		for(int i = 0; i < 4; i++) {
			scode += s.charAt(new Random().nextInt(s.length()));
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("code", scode);
		
		// 在内存中创建一张图片
		BufferedImage img = new BufferedImage(70, 35, BufferedImage.TYPE_INT_RGB);

		Graphics g = img.getGraphics();

		// 设置背景
		g.setColor(new Color(255, 193, 7));;
		g.fillRect(0, 0, 70, 35);

		g.setColor(Color.BLACK);
		g.setFont(new Font(null, Font.BOLD, 24));
		g.drawString(scode, 5, 25);

		// 获取response输出流
		OutputStream os = response.getOutputStream();

		ImageIO.write(img, "jpg", os);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
