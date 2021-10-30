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
	<br>	
	 <p><center><font size="5" color="white">View Data Files </font></center></p><br/>			
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

try{ 
	
        Connection con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from upload ");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        
        <th>File Name</th>
        <th>Uploaded Date</th>
        <th>Owner</th>
        <th>View</th>
        
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><a href="cloud_viewfiles1.jsp?username=<%=rs.getString("username")%>&dt=<%=rs.getString("dt")%>&height=<%=rs.getString("height")%>&symptoms=<%=rs.getString("symptoms")%>&cipher=<%=rs.getString("cipher").replaceAll("\\+", "%2B")%>&disease=<%=rs.getString("disease")%>&prate=<%=rs.getString("prate")%>&location=<%=rs.getString("location")%>&bloodpressure=<%=rs.getString("bloodpressure")%>&weight=<%=rs.getString("weight")%>&mobile=<%=rs.getString("mobile")%>&doctorhsh=<%=rs.getString("doctorhsh")%>&categoryhsh=<%=rs.getString("categoryhsh")%>"><font color="#0d637d" size="3">View</font></a> </td>
      
         
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