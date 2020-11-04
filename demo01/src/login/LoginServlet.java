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
		//��ȡ�û������û���Mickey
		String uname = request.getParameter("Username");
		//��ȡ����csnb6666
		String upwd = request.getParameter("Password");
		
		String userName = getServletConfig().getInitParameter("userName");
		String userPassword = getServletConfig().getInitParameter("userPassword");
		
//		if("PsyDuck".equals(uname) && "123".equals(upwd))
//		if(UserInfo.login(uname,upwd))
		if(userName.equals(uname) && userPassword.equals(upwd))
		{	
			//��ת
			//response.sendRedirect("success.html");
			request.setAttribute("username", "WELCOME , "+userName);
			request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		else
		{
			//���
			//response.getWriter().print("<div class='alert alert-danger' role='alert'><p class='lead' style='font-weight: bold;'>Wrong user name or password, please try to login again !!!</p></div>");	
			
			request.setAttribute("info", "Wrong user name or password, please try again!");
			//ת��
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
