package servlet_package;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao_package.UserDao;
import user_package.User;



@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	
	public void init() {
		userDao = new UserDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertUser(request, response);
				break;
			case "/delete":
				deleteUser(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateUser(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<User> listUser = userDao.getAllUser();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User existingUser = userDao.getUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);

	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String dr = request.getParameter("dr");
		String dp = request.getParameter("dp");
		String centre = request.getParameter("centre");
		String site = request.getParameter("site");
		String coordonneeslambert = request.getParameter("coordonneeslambert");
		String sourceenergie = request.getParameter("sourceenergie");
		String mes = request.getParameter("mes");
		String nbrgp = request.getParameter("nbrgp");
		String q = request.getParameter("q");
		String hmt = request.getParameter("hmt");
		String p = request.getParameter("p");
		String ocond = request.getParameter("ocond");
		String tvannes = request.getParameter("tvannes");
		String ovannes = request.getParameter("ovannes");
		String tcl = request.getParameter("tcl");
		String oclap = request.getParameter("oclap");
		
		User newUser = new User(dr,dp,centre,site,coordonneeslambert,sourceenergie,mes,nbrgp,q,hmt,p,ocond,tvannes,ovannes,tcl,oclap);
		userDao.saveUser(newUser);
		response.sendRedirect("list");
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String dr = request.getParameter("dr");
		String dp = request.getParameter("dp");
		String centre = request.getParameter("centre");
		String site = request.getParameter("site");
		String coordonneeslambert = request.getParameter("coordonneeslambert");
		String sourceenergie = request.getParameter("sourceenergie");
		String mes = request.getParameter("mes");
		String nbrgp = request.getParameter("nbrgp");
		String q = request.getParameter("q");
		String hmt = request.getParameter("hmt");
		String p = request.getParameter("p");
		String ocond = request.getParameter("ocond");
		String tvannes = request.getParameter("tvannes");
		String ovannes = request.getParameter("ovannes");
		String tcl = request.getParameter("tcl");
		String oclap = request.getParameter("oclap");
		

		User user = new User(id,dr,dp,centre,site,coordonneeslambert,sourceenergie,mes,nbrgp,q,hmt,p,ocond,tvannes,ovannes,tcl,oclap);
		userDao.updateUser(user);
		response.sendRedirect("list");
	}

	private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		userDao.deleteUser(id);
		response.sendRedirect("list");
	}
}
