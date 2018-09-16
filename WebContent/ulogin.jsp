<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>

<head>
  <title>Honey Encryption Applications</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
  <div id="main">
    <header>
	  <div id="banner">
	    <div id="welcome">
	      <h3>Honey Encryption Applications <span></span></h3>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">
	      <h3>Implementation of an encryption scheme resilient to brute-force attacks</h3>
	    </div><!--close welcome_slogan-->			
	  </div><!--close banner-->
    </header>

	<nav>
	  <div id="menubar">
        <ul id="nav">
          <li class="current"><a href="index.html">Home</a></li>
          
        </ul>
      </div><!--close menubar-->	
    </nav>	
    
	<div id="site_content">	

      <div class="slideshow">
	    <ul class="slideshow">
          <li class="show"><img width="900" height="250" src="images/a.jpg"  /></li>
          <li><img width="900" height="250" src="images/c.jpg"  /></li>
        </ul> 
	  </div>	
	
	  <div id="content">
        <div class="content_item">
        
		  <h1>Welcome To Honey Encryption Applications</h1> 
		  <%
       if(request.getParameter("wronguname")!=null)
       {
    	   out.println("<script>alert('Wrong Username')</script>");
       }
       if(request.getParameter("matchhoney")!=null)
       {
    	   out.println("<script>alert('Wrong Password(honey pass entered)')</script>");
       }
       
       %>
<form  action="ulaction" method="post" onsubmit="return formvalidation()">
            
            <center>
            
            </br></br></br></br></br></br>
            <table  cellpadding="3" align="center" height="150px" width="150px">
                <thead>
                    <tr>
                        <th colspan="2">User Login </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" required id="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" required id="pass" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Login" />&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>

		  
        
        <br><br><br><br><br><br><br><br>  
		  
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	
  </div><!--close main-->
  
    <footer>
	  <a href="index.html">Home</a> | <a href="ourwork.html">Our Work</a> | <a href="testimonials.html">Testimonials</a> | <a href="projects.html">Projects</a> | <a href="contact.html">Contact</a><br/><br/>
	  Heart Internet  <a href="http://www.heartinternet.co.uk/web-hosting/">Website Hosting</a> | website template by <a href="http://www.freehtml5templates.co.uk">Free HTML5 Templates</a>
    </footer>

  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  
</body>
</html>
