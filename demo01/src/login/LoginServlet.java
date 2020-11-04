package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取用户输入用户名Mickey
		String uname = request.getParameter("Username");
		//获取密码csnb6666
		String upwd = request.getParameter("Password");
		
		String userName = getServletConfig().getInitParameter("userName");
		String userPassword = getServletConfig().getInitParameter("userPassword");
		
//		if("PsyDuck".equals(uname) && "123".equals(upwd))
//		if(UserInfo.login(uname,upwd))
		if(userName.equals(uname) && userPassword.equals(upwd))
		{	
			//跳转
			//response.sendRedirect("success.html");
			request.setAttribute("username", "WELCOME , "+userName);
			request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		else
		{
			//输出
			//response.getWriter().print("<div class='alert alert-danger' role='alert'><p class='lead' style='font-weight: bold;'>Wrong user name or password, please try to login again !!!</p></div>");	
			
			request.setAttribute("info", "Wrong user name or password, please try again!");
			//转发
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
