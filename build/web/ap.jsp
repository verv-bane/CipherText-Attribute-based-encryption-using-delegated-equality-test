<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Ciphertext-Policy Attribute-Based Encryption</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
 <%
if(request.getParameter("msg")!=null){%>
    
   <script>alert('Registration Sucess..!')</script>

<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('Login Failed..!')</script>

<%
}
%>
<body>
<div id="main">
    <h1><font color="white">Ciphertext-Policy Attribute-Based Encryption With Delegated Equality Test in Cloud Computing</font></h1>
<!-- content begins -->
  <div id="content">
	<div id="right">
    <div id="logo">
        
		</div>
            
    	<div id="archives">
				<h2>Menu</h2>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="user.jsp">User</a></li>
					<li><a href="mr.jsp">Medical Researcher</a></li>
					<li><a href="ap.jsp">Attending Physician</a></li>
					<li><a href="cloud.jsp">Cloud</a></li>
					
				</ul>
         </div>
				
        </div>
          	<div id="left">
		<div id="menu">
            	<div id="buttons">
					<ul>
						<li><a href="index.html" title="" id="first">Home</a></li>
						<li><a href="user.jsp" title="" class="menubg">User</a></li>
						<li><a href="mr.jsp" title="" class="menubg">MR</a></li>
						<li><a href="ap.jsp" title="" class="menubg">AP</a></li>
						<li><a href="cloud.jsp" title="" id="end">Cloud</a></li>
					</ul>
                </div>
		</div>
                <div id="leftbg">
                <div id="text">	
				<h1></h1>			
                                <img src="images/6.jpg" width="620" height="300" alt="" title="" />
             
                
				<div style="background:url(images/hr.gif); margin: 0 auto; height: 2px; margin-top: 5px;"></div>
		
                                
                 <br>               
                 <center><p><font size="5" color="white"> Attending Physician Login </font></p><br/></center>
     
    <form action="apact.jsp" method="post">
    <center><table width="281" border="0" >

    <tr><td><font color="white"> Email or MobileNo:</td><td><input type="text" name="username" required="" /></td></tr>
    <tr><td><font color="white"> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password :</td><td><input type="password" name="password" required="" /></td></tr>
    
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Login" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>
    <center><a href="apreg.jsp"><font color="white" style="font-size: 21px"> Sign Up </font></a> </center>  
                    
                                
                                
                                
           </div>
           
    
    <div id="footer">
        <p>Developed by <a href="http://1000projects.org/" >1000 Projects</a></p>
	</div>   
       </div>      
</div>
<!-- content ends -->
<!-- footer begins -->

<!-- footer ends -->
</div>

</body>
</html>