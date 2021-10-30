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
    
   <script>alert('PHR Data Uploaded Successfully..!')</script>

   <%}
   if(request.getParameter("msg1")!=null){%>

 <script>alert('Error in File upload..!')</script>

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
					<li><a href="userhome.jsp">Home</a></li>
					<li><a href="user_upload.jsp">Upload</a></li>
                                        <li><a href="user_viewfiles.jsp">View Files</a></li>
                                        <li><a href="user_mrrequests.jsp">View MR Requests</a></li>
                                        <li><a href="user_aprequests.jsp">View AP Requests</a></li>
                                        <li><a href="index.html">Logout</a></li>
					
				</ul>
         </div>
				
        </div>
          	<div id="left">
		<div id="menu">
            	<div id="buttons">
					<ul>
						<li><a href="userhome.jsp" title="" id="first">Home</a></li>
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
   
  <center><p><font size="5" color="white">Upload PHR Data </font></p><br/></center>
     
   
     <form name="myform" action="user_upload1.jsp" method="post" >
    <table align="center" width="321">
    
    <tr>
    <td width="191" height="43"><font color="white">User_Name </td>
    <td width="218"><input name="username"  placeholder="User Name" /></td>
    <td width="191" height="43"><font color="white">Height </td>
    <td width="218"><input name="height"  placeholder="Height" /></td>
    </tr>
    
    <tr>
    <td height="43"><font color="white"> Symptoms</td>
    <td><input name="symptoms"  placeholder="Symptoms"/></td><td height="43"><font color="white"> Disease</td>
    <td><input name="disease"  placeholder="Disease"/></td>
    </tr>

    <tr>
    <td height="43"><font color="white">Pulse Rate</td>
    <td width="218"><input name="prate"  placeholder="Pulse Rate" /></td>
    <td width="191" height="43"><font color="white">Location </td>
    <td width="218"><input name="location"  placeholder="Location" /></td>
    </tr>
    
   <tr>
    <td height="43"><font color="white">Blood Pressure</td>
    <td width="218"><input name="bloodpressure"  placeholder="Blood Pressure" /></td>
    <td width="191" height="43"><font color="white">Weight </td>
    <td width="218"><input name="weight"  placeholder="Weight" /></td>
    </tr>
    
    <tr>
    <td height="43"><font color="white">Mobile_Number </td>
    <td><input name="mobile" id="txtphoneno"  placeholder="Mobile Number"/></td>
      <td height="43"><font color="white">Doctor</td>
    <td><select name="dt" style="width:170px;" required="">
    <option>--Select--</option>
    <option>Medical Researcher</option>
    <option>Attending Physician</option>
   </select></td>
    </tr>  
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="UPLOAD" /></td>
    </td>
    </table></center>
    </form>
    <br/>
                                   
                                
                                
                                
                                
                                
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