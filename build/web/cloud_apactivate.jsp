<%@page import="java.sql.*"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@ page session="true" %>
    <%
        
    String email = request.getParameter("email");

    try{
     
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("update ap set status = 'Activated' where email = '"+email+"' ");
  
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("cloud_viewap.jsp?msg=Success");
    }
    else{
    response.sendRedirect("cloud_viewap.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>