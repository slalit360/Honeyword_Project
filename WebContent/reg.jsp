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
          <li><a href="ulogin.jsp">User</a></li>
          <li><a href="adminlogin.jsp">Admin</a></li>
          <li><a href="honeytrackerlogin.jsp">Honey Tracker</a></li>
          <li><a href="hackerlogin">Hacker</a></li>
        </ul>
      </div><!--close menubar-->	
    </nav>	
    
	<div id="site_content">	

      <div class="slideshow">
	    <ul class="slideshow">
          <li class="show"><img width="900" height="250" src="images/a.jpg" alt="&quot;Enter your caption here&quot;" /></li>
          <li><img width="900" height="250" src="images/c.jpg" alt="&quot;Enter your caption here&quot;" /></li>
        </ul> 
	  </div>	
	
	  <div id="content">
        <div class="content_item" align="center">
        
		  <h1>Welcome To Honey Encryption Applications</h1> 
		  <%

if(request.getParameter("n")!=null)
{
	out.println("<script>alert('Please Choose Unique Username')</script");
}

%>
</br></br></br></br>

<form name="reg" action="hregaction" onsubmit="return formvalidation()" method="post">

<table align="center" height="50%" width="70%" cellspacing="2" cellpadding="2" border="5">
    <tr>
        <td colspan="2" align="center" style="font: bold;"><b>Registration Form.</b></td>
        
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">First Name<span style="color:red">*</span></td>
 
        <td width="57%"><input type="text" value="" name="fname" id="mrdn" size="24" onkeypress="javascript:return isNumber(event)" onblur="mrdnvalidation()" required><label id="mrdn1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">Last Name<span style="color:red">*</span></td>
        <td width="57%">
        <input type="text" value="" name="lname" id="lnmae"  size="24" onblur="fnamevalidation()" ><label id="fnmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">D.O.B<span style="color:red">*</span></td>
        <td width="57%">
        <input type="text" value="" name="dob" id="lname"  size="24" onblur="lnamevalidation()"><label id="lnmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
        <tr><td align="left" valign="top" width="41%">Gender<span style="color:red">*</span></td>
        
        <td width="57%"><select name="gender" required>
<option value="Default"></option>
<option value="Male">Male</option>
<option value="Female">Female</option>
 
</select></td>    </tr>
    
    

 <tr>
        <td align="left" valign="top" width="41%">Email<span style="color:red">*</span></td>
        <td width="57%">
        <input type="text" value="" name="email" id="dob"  size="24"></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">Contact No<span style="color:red">*</span></td>
        <td width="57%">
        <input type="text" value="" name="cno" id="dob"  size="24"></td>
    </tr>
    


    <tr>
        <td align="left" valign="top" width="41%">Address</td>
 
        <td width="57%"><textarea rows="4" maxlen="200" name="address" id="address"cols="20" onblur="avalidation()"></textarea><label id="anmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    
     <tr>
        <td align="left" valign="top" width="41%">Blood Group<span style="color:red"></td>
        <td width="57%">
        <input type="text" value="" name="bldgroup" id="emailid"  id="emailid"  size="24"onblur="evalidation()"><label id="enmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">Uname<span style="color:red"></td>
        <td width="57%">
        <input type="text" value="" name="uname" id="emailid"  id="emailid"  size="24"onblur="evalidation()"><label id="enmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">Password<span style="color:red"></td>
        <td width="57%">
        <input type="password" value="" name="pass" id="emailid"  id="emailid"  size="24"onblur="evalidation()"><label id="enmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">Honeyword1<span style="color:red"></td>
        <td width="57%">
        <input type="text" value="" name="honey1" id="emailid"  id="emailid"  size="24"onblur="evalidation()"><label id="enmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">Honeyword2<span style="color:red"></td>
        <td width="57%">
        <input type="text" value="" name="honey2" id="emailid"  id="emailid"  size="24"onblur="evalidation()"><label id="enmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    <tr>
        <td align="left" valign="top" width="41%">Honeyword3<span style="color:red"></td>
        <td width="57%">
        <input type="text" value="" name="honey3" id="emailid"  id="emailid"  size="24"onblur="evalidation()"><label id="enmae1" style="color:#FF0000;font-size:10px;"></label></td>
    </tr>
    
       
       
         
     
    <tr>
        <td colspan="2">
        <p align="center">
        <input type="submit" value="  Submit" name="B4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" value="  Reset All   " name="B5"></td>
    </tr>
    
 
</table>
</br></br></br></br>
</form>


		  
		  
        
        
		  
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
