package pack1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
import java.util.Date;
import java.text.*;
import dbconnection.DbConnection;

/**
 * Servlet implementation class UloginAction
 */
@WebServlet("/UloginAction")
public class UloginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int counter=0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UloginAction() {
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
		String email=null;
		int f=0;
		String flag="0";
		try {
			st = cn.createStatement();
			rs=st.executeQuery("select * from reg");
	
			while(rs.next())
			{
				if(name.equalsIgnoreCase(rs.getString(10)) && pass.equalsIgnoreCase(rs.getString(11)))
				{
					int idd=rs.getInt(1);
					String bemail=rs.getString(6);
					session.setAttribute("blockid",idd);
					session.setAttribute("blockemail",bemail);
					flag=rs.getString(12);
					System.out.println("flag========="+flag);
					session.setAttribute("id",idd);
					f=1;
					break;
				}
			}
		} catch (SQLException e) {
		}
		if(flag.equalsIgnoreCase("1"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("block.jsp");
	    	rd.forward(request, response);
		}
		else if(f==1)
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("loginsuc.jsp");
	    	rd.forward(request, response);
	    	
		}
		
		else if(f==0)
		{
			try{
			int uid=0;
			
			ResultSet rsu=st.executeQuery("select * from reg");
			//-------------------------------------------------------
			while(rsu.next())
			{
				if(name.equalsIgnoreCase(rsu.getString(10)))
				{
					uid=rsu.getInt(1);
					email=rsu.getString(6);
					flag=rsu.getString(12);
					System.out.println("in honey flag="+flag);
					break;
				}
			}
			//-------------------------------------------------------
			if(uid==0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("ulogin.jsp?wronguname=y");
		    	rd.forward(request, response);
				
			}
			//-------------------------------------------------------
			else
			{
				session.setAttribute("blockid",uid);
				session.setAttribute("blockemail",email);
				if(flag.equalsIgnoreCase("1"))
				{
					RequestDispatcher rd=request.getRequestDispatcher("block.jsp");
			    	rd.forward(request, response);
				}
			System.out.println("in the else");
			Statement stmt=cn.createStatement();
			ResultSet rst=stmt.executeQuery("select * from honeyword where idd="+uid);
			
			int check=0;
			while(rst.next())
			{
				System.out.println("in the while");
				System.out.println(rst.getInt(1));
				if(pass.equalsIgnoreCase(rst.getString(2)))
				{
					//--------------------------------
					DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
					Date date = new Date();            
					String tdate=dateFormat.format(date);
					PreparedStatement stp=cn.prepareStatement("INSERT INTO `honeyword`.`userhoney` (`id`, `hn`, `date`) "
							+ "VALUES ('"+uid+"', '"+pass+"', '"+tdate+"')");
					stp.executeUpdate();
					//---------------------------------
					check=1;
					System.out.println("imp------------------------------");
					System.out.println(rst.getString(2));
					counter++;
					if(counter==3)
					{
						
						System.out.println("counter block called");
						counter=0;
						RequestDispatcher rd=request.getRequestDispatcher("block.jsp");
				    	rd.forward(request, response);
				    	break;
						
					}
					RequestDispatcher rd=request.getRequestDispatcher("ulogin.jsp?matchhoney=y");
			    	rd.forward(request, response);
			    	break;
				}
				
			}
			if(check==0)
			{
				//--------------------------------
				DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
				Date date = new Date();            
				String tdate=dateFormat.format(date);
				PreparedStatement stp=cn.prepareStatement("INSERT INTO `honeyword`.`wrongpass` (`id`, `wpass`, `date`) "
						+ "VALUES ('"+uid+"', '"+pass+"', '"+tdate+"')");
				stp.executeUpdate();
				//---------------------------------
				System.out.println("in else block no match with honey called");
				RequestDispatcher rd=request.getRequestDispatcher("block.jsp");
		    	rd.forward(request, response);
		    	
				
			}
			//----------------
			}
			
		 }
		catch(Exception e)
		{
			
		}
		}
	

	}

}
