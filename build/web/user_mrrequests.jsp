<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@page import="java.sql.Connection"%>
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
    
   <script>alert('Response Sent Successfully..!')</script>

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
	<br>	
	 <p><center><font size="5" color="white">View Medical Researcher Requests </font></center></p><br/>			
       <style>
        th{
            color: #50aac3;
        }
         tr{
            color: white;
        }
        
        td{
            text-align: center;
        }
    </style>                         
                                
                                
                <br><br><br>
   
<%
    String user = session.getAttribute("email").toString();
    %>	
   <% 

try{ 
	
        Connection con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from request where owneremail = '"+user+"' ");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        
        <th>File Name</th>
        <th>User</th>
        <th>Owner</th>
        <th>Response</th>
        
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><a href="user_mrrequests1.jsp?filename=<%=rs.getString("filename")%>&user=<%=rs.getString(1)%>&id=<%=rs.getInt("id")%>"><font color="#0d637d" size="3">Response</font></a> </td>
      
         
        </tr>
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>                             
                                
                                
                                
                                
                                
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