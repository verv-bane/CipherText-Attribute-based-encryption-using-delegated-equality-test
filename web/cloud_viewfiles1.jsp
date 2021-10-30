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
					<li><a href="cloudhome.jsp">Home</a></li>
					<li><a href="cloud_viewmr.jsp">View Medical Researcher</a></li>
                                        <li><a href="cloud_viewap.jsp">View Attending Physician</a></li>
                                        <li><a href="cloud_viewfiles.jsp">View PHR Data</a></li>
                                        
                                        <li><a href="index.html">Logout</a></li>
					
				</ul>
         </div>
				
        </div>
          	<div id="left">
		<div id="menu">
            	<div id="buttons">
					<ul>
						<li><a href="cloushome.jsp" title="" id="first">Home</a></li>
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
		
<%

String username = request.getParameter("username");
String height = request.getParameter("height");
String symptoms = request.getParameter("symptoms");
String disease = request.getParameter("disease");
String prate = request.getParameter("prate");
String location = request.getParameter("location");
String bloodpressure = request.getParameter("bloodpressure");
String weight = request.getParameter("weight");
String mobile = request.getParameter("mobile");
String dt = request.getParameter("dt");
String cipher = request.getParameter("cipher");
String doctorhsh = request.getParameter("doctorhsh");
String categoryhsh = request.getParameter("categoryhsh");

    
 %>
 
   <br><br><br>
   
  <center><p><font size="5" color="white"> PHR Data </font></p><br/></center>
     
   
    <table align="center" width="321">
    
    <tr>
    <td width="191" height="43"><font color="white">User_Name </td>
    <td width="218"><input name="username"  value="<%=username%>" /></td>
    <td width="191" height="43"><font color="white">Height </td>
    <td width="218"><input name="height"  value="<%=height%>" /></td>
    </tr>
    
    <tr>
    <td height="43"><font color="white"> Symptoms</td>
    <td><input name="symptoms" value="<%=symptoms%>"/></td><td height="43"><font color="white"> Disease</td>
    <td><input name="disease"  value="<%=disease%>"/></td>
    </tr>

   <tr>
    <td height="43"><font color="white">Pulse Rate</td>
    <td width="218"><input name="prate"  value="<%=prate%>" /></td>
    <td width="191" height="43"><font color="white">Location </td>
    <td width="218"><input name="location"  value="<%=location%>" /></td>
   </tr>
    
   <tr>
    <td height="43"><font color="white">Blood Pressure</td>
    <td width="218"><input name="bloodpressure"  value="<%=bloodpressure%>" /></td>
    <td width="191" height="43"><font color="white">Weight </td>
    <td width="218"><input name="weight"  value="<%=weight%>" /></td>
   </tr>
    
    <tr>
      <td height="43"><font color="white">Mobile_Number </td>
      <td><input name="mobile" value="<%=mobile%>"/></td>
      <td height="43"><font color="white">Doctor</td>
      <td><input name="doctor" value="<%=dt%>"/></td>
    </tr> 
      
    <tr>
     <td height="43"><font color="white">Doctor </td>
     <td><input name="mobile" value="<%=doctorhsh%>"/></td>
     <td height="43"><font color="white">Category</td>
     <td><input name="doctor" value="<%=categoryhsh%>"/></td>
    </tr> 
      
    <tr>
    <td height="43"><font color="white">Data </td>
    <td><textarea name="mobile" value="<%=cipher%>"/><%=cipher%></textarea></td>
      
    </tr>   
      
  
    </table></center>
  
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