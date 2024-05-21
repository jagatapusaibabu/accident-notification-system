

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AAS.database;

/**
 * Servlet implementation class Regservlet
 */
@WebServlet("/Regservlet")
public class Regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Regservlet() {
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
		System.out.println("sai");
		 PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		try {
				Connection con=database.Database();		
				PreparedStatement st = con
                 .prepareStatement("insert into vehicle_information(NAME,username,fathername,PASSWORD,vehiclenumber"
                 		+ ",gender,address,phone_number,relatives_number,house_number) values(?,?,?,?,?,?,?,?,?,?)");

          
          st.setString(1, request.getParameter("name"));
          st.setString(2, request.getParameter("uname"));
          st.setString(3, request.getParameter("fname"));
          st.setString(4, request.getParameter("pwd"));
          st.setString(5, request.getParameter("ve"));
          st.setString(6, request.getParameter("selectedgender"));
          st.setString(7, request.getParameter("address"));
          st.setString(8, request.getParameter("phno"));
          st.setString(9, request.getParameter("rno"));
          st.setString(10, request.getParameter("hno"));


          // Execute the insert command using executeUpdate()
          // to make changes in database
          st. executeUpdate();
          

          // Close all the connections
                 // Get a writer pointer 
          // to display the successful result
         
         // out.println("Successfully Inserted");
         out.println("data entered");
			  
          		
      }
      catch (Exception e) {
          e.printStackTrace();
      }
		

	}
}