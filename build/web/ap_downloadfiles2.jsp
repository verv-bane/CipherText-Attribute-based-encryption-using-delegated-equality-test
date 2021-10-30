<%@page import="java.sql.*"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@ page session="true" %>
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
    String skey = request.getParameter("skey");
    
      String doctorhash = session.getAttribute("doctor").toString();
    String categoryhash = session.getAttribute("category").toString();
    
    
    
 String height = null;
String symptoms = null;
String disease = null;
String prate = null;
String location = null;
String bloodpressure = null;
String weight = null;
String mobile = null;
String doctor = null;
String category = null;
String data = null;

    
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from request1 where filename= '"+filename+"'  and id='"+id+"' and skey='"+skey+"'");
    if(rs.next())
    {
      height = rs.getString("height");
      symptoms = rs.getString("symptoms");
      disease = rs.getString("disease");
      prate = rs.getString("prate");
      location = rs.getString("location");
      bloodpressure = rs.getString("bloodpressure");
      weight = rs.getString("weight");
      mobile = rs.getString("mobile");
      doctor = rs.getString("doctor");
      category = rs.getString("category");
      data = rs.getString("data"); 
        
    }
    
    
    
    %>	
    <center><p><font size="5" color="white"> PHR Data </font></p><br/></center>
     
    <form action="ap_downloadfiles3.jsp" method="post">
    <table align="center" width="321">
    
    <tr>
    <td width="191" height="43"><font color="white">File Name </td>
    <td width="218"><input name="filename"  value="<%=filename%>" /></td>
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
    <td height="43"><font color="white">Doctor </td>
    <td><input name="doctorhash" value="<%=doctorhash%>"/></td>
      <td height="43"><font color="white">Category</td>
      <td><input name="categoryhash" value="<%=categoryhash%>"/></td>
    </tr> 
      
    <tr>
     <td height="43"><font color="white">Mobile_Number </td>
    <td><input name="mobile" value="<%=mobile%>"/></td>    
    <td height="43"><font color="white">Data </td>
    <td><textarea name="data" value="<%=data%>"/><%=data%></textarea></td>
      
    </tr>  
    
    
    <tr>
     <td height="43"><font color="white">Secret Key </td>
    <td><input name="skey" value="<%=skey%>"/></td>    
    
    </tr>   
     <tr>
    
    <td><input type="hidden" name="doctor" value="<%=doctor%>"/></td>    
    <td><input type="hidden" name="category" value="<%=category%>"/></td>      
    </tr>  
  
    </table></center>
  
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Decrypt" /></td>
   
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