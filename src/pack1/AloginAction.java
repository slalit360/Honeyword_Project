package pack1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DbConnection;

/**
 * Servlet implementation class AloginAction
 */
@WebServlet("/AloginAction")
public class AloginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AloginAction() {
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
		String name=request.getParameter("uname");
		String pass=request.getParameter("pass");
		Connection cn=DbConnection.getConnection();
		HttpSession session=request.getSession();
		Statement st = null;
		ResultSet rs=null;
		PrintWriter out=response.getWriter();
		int f=0;
		try {
			st = cn.createStatement();
			rs=st.executeQuery("select * from admin");
	
			while(rs.next())
			{
				if(name.equalsIgnoreCase(rs.getString(2)) && pass.equalsIgnoreCase(rs.getString(3)))
				{
					
					
			    	
					f=1;
					break;
				}
				
			}
		} catch (SQLException e) {
			
		}
		
		if(f==1)
		{
			RequestDispatcher rd=request.getRequestDispatcher("aloginsuc.jsp");
	    	rd.forward(request, response);
	    	
		}
		if(f==0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp?alogin=n");
	    	rd.forward(request, response);
	    	
		}
	
		
		
	}

}
