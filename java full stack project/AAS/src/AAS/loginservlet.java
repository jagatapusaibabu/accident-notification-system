package AAS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			
			
			Connection con=database.Database();
			PreparedStatement st= con.prepareStatement("select * from vehicle_information where username=? and password=?");
			st.setString(1, request.getParameter("uname"));
			st.setString(2, request.getParameter("pwd"));
			ResultSet rst=st.executeQuery();
			if(rst.next()){
				PrintWriter out=response.getWriter();
				out.println("data avalible");
				response.sendRedirect("enq.html");
		           
			}
			else{
				PrintWriter out=response.getWriter();
				System.out.println("invalid user");
				System.out.println("So You are Redirected to Registration Page");
				response.sendRedirect("login.html");
		        
			}
			st.close();
			con.close();
			
		}
			catch(Exception e){
				e.printStackTrace();
			}
		}
	}


