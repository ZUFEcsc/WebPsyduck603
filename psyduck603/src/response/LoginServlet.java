package response;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;
import jdbc.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("Username");
		//获取密码csnb6666
		String upwd = request.getParameter("Password");
		String ucode = request.getParameter("Usercode");
		
		//获取用户的会话对象
		HttpSession session = request.getSession();
		String code = (String) session.getAttribute("code");
		
//		if("PsyDuck".equals(uname) && "123".equals(upwd) && code.equals(ucode))
		User u = UserService.Login(uname,upwd); 
		if(u != null && code.equals(ucode))
		{	
			//跳转
			session.setAttribute("user", u);
//			session.setAttribute("username",uname);
			session.setAttribute("wusername","WELCOME , "+uname);
			
			session.removeAttribute("Usercode");
			
			request.getRequestDispatcher("PsyDuck").forward(request, response);
		}
		else
		{
			if(code.equals(ucode)) 
			{
				request.setAttribute("info", "Wrong user name or password, please try again!");
			}
			else
			{
				request.setAttribute("info", "Verification code error please try again!");
			}

			request.setAttribute("inputusername", uname);
			//转发
			request.getRequestDispatcher("Login").forward(request, response);
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
