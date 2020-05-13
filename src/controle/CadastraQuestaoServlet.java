package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CadastraQuestaoServlet")
public class CadastraQuestaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  doGet(request, response);
		  
		  
		  String text = request.getParameter("box");
		  String op1 = request.getParameter("op1");
		  String op2 = request.getParameter("op2");
		  String op3 = request.getParameter("op3");
		  String op4 = request.getParameter("op4");
		  String gab = request.getParameter("gab");
		
		    response.sendRedirect("/cadastrado.jsp?op1=" +op1 + "&op2=" +op2+ "&op3=" +op3+ "&op4=" +op4+ "%gab=" +gab+ "&box=" +text);
	}

}
