package AAS;
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AAS.database;

/**
 * Servlet implementation class informationservlet
 */
@WebServlet("/informationservlet")
public class informationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public informationservlet() {
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
			PreparedStatement st= con.prepareStatement("select * from vehicle_information where vehiclenumber=?");
			st.setString(1, request.getParameter("ve"));
			 
			ResultSet rst=st.executeQuery();
			if(rst.next()){
				PrintWriter out=response.getWriter();
				out.println("data avalible");
				request.getParameter("vehicalnumber");
		           
			}
			else{
				PrintWriter out=response.getWriter();
				System.out.println("invalid user");
				System.out.println("So You are Redirected to Registration Page");
				response.sendRedirect("enq.html");
		        
			}
			st.close();
			con.close();
			
		}
			catch(Exception e){
				e.printStackTrace();
			}
		}
	}


