<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Ciphertext-Policy Attribute-Based Encryption</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
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
					<li><a href="aphome.jsp">Home</a></li>
					<li><a href="ap_viewfiles.jsp">View Files</a></li>
                                        <li><a href="ap_downloadfiles.jsp">Download Files</a></li>
                                        <li><a href="index.html">Logout</a></li>
					
				</ul>
         </div>
				
        </div>
          	<div id="left">
		<div id="menu">
            	<div id="buttons">
					<ul>
						<li><a href="aphome.jsp" title="" id="first">Home</a></li>
						<li><a href="#" title="" class="menubg">User</a></li>
						<li><a href="#" title="" class="menubg">MR</a></li>
						<li><a href="#" title="" class="menubg">AP</a></li>
						<li><a href="index.html" title="" id="end">Logout</a></li>
					</ul>
                </div>
		</div>
                <div id="leftbg">
                <div id="text">	
				<h1></h1>			
                                <img src="images/6.jpg" width="620" height="300" alt="" title="" />
             
                
				<div style="background:url(images/hr.gif); margin: 0 auto; height: 2px; margin-top: 5px;"></div>
		
				
                                
                                
                                
                <br><br><br>
                            
<%
    String user = session.getAttribute("email").toString();
    String filename = request.getParameter("filename");
    String owner = request.getParameter("owner");
    String id = request.getParameter("id");
    %>	
      <center><p><font size="5" color="white"> Verify Secret Key </font></p><br/></center>
     
    <form action="ap_downloadfiles2.jsp" method="post">
    <center><table width="281" border="0" >

    </td><td><input type="hidden" name="id" value="<%=id%>" /></td></tr>
    <tr><td><font color="white"> File Name:</td><td><input type="text" name="filename" value="<%=filename%>" /></td></tr>
    <tr><td><font color="white"> Owner Name :</td><td><input type="text" name="owner" value="<%=owner%>" /></td></tr>
    <tr><td><font color="white"> Secret Key :</td><td><input type="text" name="skey" /></td></tr>
    
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Verify" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>                             
                                
                                
                                
                                
                                
                                
                                
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