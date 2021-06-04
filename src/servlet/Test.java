package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Test
 */
@WebServlet("/test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		//リクエストパラメータの取得
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String address = request.getParameter("address");
		String memo = request.getParameter("memo");
		String[] mail  = request.getParameterValues("mail");
		String judge = request.getParameter("judge");

		String url; //転送先URL
		
		if(name != null && address != null && memo != null) {
			//セッションオブジェクトの取得
			HttpSession session = request.getSession();
			
			//セッションスコープへの属性の設定
			session.setAttribute("name", name);
			session.setAttribute("company", company);
			session.setAttribute("address", address);
			session.setAttribute("memo", memo);
			session.setAttribute("mail", mail);
			session.setAttribute("judge", judge);
			
			//転送先の指定
			url = "accept.jsp";
		
		} else {
			//転送先の指定
			url = "contact.jsp";
			
			request.setAttribute("message", "＊は必須項目です。");
			
		}
		
		//リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
			
		
	}

}
