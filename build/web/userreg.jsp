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
    
   <script>alert('Registration Success..!')</script>

<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('Registration Failed..!')</script>

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
                 <center>   
       <p align="justify">
    <p><font color="white" size="5">  User Registration </font></p><br/>
    
    <form name="myform" action="userregact.jsp" method="post" onsubmit="return validateform()">
    <table align="center" width="321">
    <tr>
    <td width="191" height="43"><font color="white">User Name </td>
    <td width="218"><input name="username" required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="white">Password </td>
    <td width="218"><input type="password" name="password" required="" placeholder="Password" /></td>
    </tr>
    <tr>
    <td height="43"><font color="white"> Email ID</td>
    <td><input name="email" required="" placeholder="Email ID"/></td>
    </tr>

    <tr>
    <td height="43"><font color="white">Date Of Birth</td>
    <td><input type="date" name="dob" style="text-align:right" required="" ></td>
    </tr>
    
        
    <tr>
    <td height="65"><font color="white">Address</td>
    <td><textarea name="address" rows="3" cols="20" required=""></textarea></td>
    </tr> 
    <tr>
    <td height="43"><font color="white">Mobile Number </td>
    <td><input name="mobile" id="txtphoneno" required="" placeholder="Mobile Number"/></td>
    </tr>  

    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="REGISTER" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>     
        
     </center>            
                                
                                
                                
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