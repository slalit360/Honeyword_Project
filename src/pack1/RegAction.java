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

import dbconnection.DbConnection;

/**
 * Servlet implementation class RegAction
 */
@WebServlet("/RegAction")
public class RegAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegAction() {
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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname"); 
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String cno=request.getParameter("cno");
		String add=request.getParameter("address");
		String bldgroup=request.getParameter("bldgroup");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String honey1=request.getParameter("honey1");
		String honey2=request.getParameter("honey2");
		String honey3=request.getParameter("honey3");
		String[] honey=new String[3];
		honey[0]=honey1;
		honey[1]=honey2;
		honey[2]=honey3;
		int f=0;
		Connection cn=DbConnection.getConnection();
		System.out.println("connection made");
		PrintWriter out=response.getWriter();
		
		try {
			Statement st = cn.createStatement();
			String query="select * from reg";
			ResultSet rs=st.executeQuery(query);
			  
			 
			while(rs.next())
			{
				if(uname.equalsIgnoreCase(rs.getString(10)))
				{ 
					f=1;
				
				RequestDispatcher rd=request.getRequestDispatcher("reg.jsp?n=N");
				rd.forward(request,response);
				
				break;
				}
						
			}
			 

			if(f==0)
			{
				System.out.println("in insert");
				
				PreparedStatement stmt=cn.prepareStatement("INSERT INTO `honeyword`.`reg` (`id`, `fname`, `lname`, `dob`, `gender`, `email`, `contno`, `add`, `bldgroup`, `uname`, `pass`) "
						+ "VALUES (NULL, '"+fname+"', '"+lname+"', '"+dob+"', '"+gender+"', '"+email+"', '"+cno+"', '"+add+"', '"+bldgroup+"', '"+uname+"', '"+pass+"')");
				/*
				PreparedStatement stmt=cn.prepareStatement("insert into stdreg (id,fname,lname,dob,gender,email,contno,add,bldgroup,uname,pass) values(?,?,?,?,?,?,?,?,?,?,?)");
				stmt.setString(1,"");
				stmt.setString(2,fname);
				stmt.setString(3,lname);
				stmt.setString(4,dob);
				stmt.setString(5,gender);
				stmt.setString(6,email);
				stmt.setString(7,cno);
				stmt.setString(8,add);
				stmt.setString(9,bldgroup);
				stmt.setString(10,uname);
				stmt.setString(11,pass);
				*/stmt.executeUpdate();
				System.out.println("below exup");
				HttpSession session=request.getSession();
				session.setAttribute("uname", uname);
				session.setAttribute("honey", honey);
				RequestDispatcher rd=request.getRequestDispatcher("ulogin.jsp?y=Y");
				rd.forward(request,response);
				
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	}

}
