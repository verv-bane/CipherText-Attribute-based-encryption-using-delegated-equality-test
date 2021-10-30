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
    
   <script>alert(' Activation Success..!')</script>

<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('Failed..!')</script>

<%
}
%>  
    <%
if(request.getParameter("msg1")!=null){%>
    
   <script>alert('Successfully Deactivated..!')</script>

<%}
if(request.getParameter("msg11")!=null){%>

 <script>alert('Failed..!')</script>

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
						<li><a href="cloudhome.jsp" title="" id="first">Home</a></li>
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
   

   <br><br><br>
	
   <p><center><font size="5" color="white"> View Medical Researcher </font></center></p><br/>			
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
                                
      
   
<%
   
try{ 
	
        Connection con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from mr ");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        
        <th>User Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Doctor Type</th>
        <th>Category</th>
        <th>Status</th>
        <th>Activate</th>
        <th>Deactivate</th>
        
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><a href="cloud_mractivate.jsp?email=<%=rs.getString(3)%>"><font color="#0d637d" size="3">Activate</font></a> </td>
                <td><a href="cloud_mrdeactivate.jsp?email=<%=rs.getString(3)%>"><font color="#0d637d" size="3">Deactivate</font></a> </td>
      
         
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