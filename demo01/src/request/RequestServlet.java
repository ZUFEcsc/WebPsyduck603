package request;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class requestServlet
 */
@WebServlet("/requestServlet")
public class RequestServlet extends HttpServlet {
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String acceptLanguage = request.getHeader("Accept-Language");

		//使用语言
		response.getWriter().append("Accept-Language: ").append(acceptLanguage);
		
		//ip地址
		response.getWriter().append("Ip: ").append(request.getLocalAddr());
		
		//uri
		response.getWriter().append("Uri: ").append(request.getRequestURI());
		
		//子程序名称
		response.getWriter().append("ContextPath: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
