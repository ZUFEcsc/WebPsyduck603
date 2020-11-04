package response;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * 注册处理Servlet
 */
@MultipartConfig
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// 获取表单信息
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		String sex = request.getParameter("sexRadio");
//		String[] specialty = request.getParameterValues("Specialty");
		String major = request.getParameter("majors");
		String java = request.getParameter("Java");
		String cupup = request.getParameter("C++");
		String python = request.getParameter("Python");
		String js = request.getParameter("JavaScript");

		// 获取ip地址
		String ip = request.getLocalAddr();

		String strong = "";
		if (java != null) {
			strong = strong + " " + java;
		}
		if (cupup != null) {
			strong = strong + " " + cupup;
		}
		if (python != null) {
			strong = strong + " " + python;
		}
		if (js != null) {
			strong = strong + " " + js;
		}

//		System.out.print(strong);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String regDate = sdf.format(new Date());

//		获取当前项目的世界物理地址(E:\apache-tomcat-8.5.57-windows-x64\apache-tomcat-8.5.57\webapps\demo01
		String path = this.getServletContext().getRealPath("/")+File.separator+"img"+File.separator;
		
//		从request里面获取上传文件
		Part part = request.getPart("Userimg");
		//part.getSubmittedFileName
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssS");
		String time = sdf2.format(new Date());
		
		part.write(path+time+".jpg");

		request.setAttribute("regInfo", "Reg information you have writen.");
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		request.setAttribute("sex", sex);
		request.setAttribute("major", major);
		request.setAttribute("specialty", strong);
		request.setAttribute("regDate", regDate);
		request.setAttribute("ip", ip);

		request.setAttribute("userimg", time+".jpg");
//		request.setAttribute("specialty",specialty.toString());

//		if(specialty != null)
//		{
//			for(String s :specialty) {
//				request.setAttribute("specialty", s);
//			}
//		}

		request.getRequestDispatcher("WEB-INF/jsp/regInfo.jsp").forward(request, response);

//		PrintWriter out = response.getWriter();
//
////		out.print("Reg information you have writen.");
//		
//		out.print(username);
//		out.print(password);
//		out.print(sex);
//		out.print(major);
//		
//		if(hobbies != null)
//		{
//			for(String s :hobbies) {
//				out.print(s+" ");
//			}
//		}
//					
//		out.append("Ip: ").append(request.getLocalAddr());
//		
//		out.print("RegDate: "+regDate);
//		
//		out.flush();
//		out.close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
